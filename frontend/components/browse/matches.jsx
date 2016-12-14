import React from 'react';
import MatchItem from './match_item';

class Matches extends React.Component {
  constructor(props) {
    super(props);

    this.findMatchPercentage = this.findMatchPercentage.bind(this);
    this.calculateQuestionImportance = this.calculateQuestionImportance.bind(this);
    this.calculateQuestionScore = this.calculateQuestionScore.bind(this);
    this.matchListItems = this.matchListItems.bind(this);
  }

  componentDidMount() {
    this.props.fetchUsers();
    this.props.fetchLikes(this.props.currentUser.id);
    this.props.fetchQuestions();
  }

  findMatchPercentage(user) {
    let currentUserPoints = 0;
    let currentUserQuestionTotal = 0;
    let otherUserPoints = 0;
    let otherUserQuestionTotal = 0;

    const userQuestions = this.props.currentUser.questions.map((question) => {
      return question.id;
    });

    const otherUserQuestions = user.questions.map((question) => {
      return question.id;
    });

    const commonQuestions = Object.keys(this.props.questions).map((question) => {
      if (userQuestions.includes(parseInt(question)) && otherUserQuestions.includes(parseInt(question))) {
        return this.props.questions[question];
      }
    }).filter((question) => question !== undefined);

    if (commonQuestions.length === 0) {
      return 0;
    }

    commonQuestions.forEach((question) => {
      currentUserPoints += this.calculateQuestionScore(question, this.props.currentUser, user);
      currentUserQuestionTotal += this.calculateQuestionImportance(question, this.props.currentUser);
      otherUserPoints += this.calculateQuestionScore(question, user, this.props.currentUser);
      otherUserQuestionTotal += this.calculateQuestionImportance(question, user);
    });
    
    const currentUserPercent = (currentUserPoints / currentUserQuestionTotal);
    const otherUserPercent = (otherUserPoints / otherUserQuestionTotal);

    const multiplied = currentUserPercent * otherUserPercent;
    const root = commonQuestions.length;

    return Math.pow(multiplied, (1/root)) * 100;
  }

  calculateQuestionImportance(question, user) {
    let questionImportance = 0;
    const answers = question.answers.map((answer) => answer.id);

    user.responses.forEach((response) => {
      if (answers.includes(response.answer_id)) {
        questionImportance = response.importance;
      }
    });

    return questionImportance;
  }

  calculateQuestionScore(question, user, otherUser) {
    const answers = question.answers;
    const answerIds = question.answers.map((answer) => answer.id);
    let otherUserAnswer = null;
    let userAcceptables = null;
    let userImportance = 0;

    answers.forEach((answer) => {
      otherUser.responses.forEach((response) => {
        if (response.answer_id === answer.id) {
          otherUserAnswer = answer.body;
        }
      });
    });

    user.responses.forEach((response) => {
      if (answerIds.includes(response.answer_id)) {
        userAcceptables = response.acceptable_answers;
        userImportance = response.importance;
      }
    });

    if (!userAcceptables.includes(otherUserAnswer)) {
      return 0;
    } else {
      return userImportance;
    }

  }

  matchListItems() {
    const matches = Object.keys(this.props.users).map((user) => {
      let likeStatus = false;

      Object.keys(this.props.likes).forEach((like) => {
        if (this.props.likes[like].to_id === this.props.users[user].id) {
          likeStatus = true;
        }
      });

      const matchPercentage = this.findMatchPercentage(this.props.users[user]);

      return (
        <li key={ user }>
          <MatchItem
            matchPercentage={ matchPercentage }
            user={ this.props.users[user] }
            likeStatus={ likeStatus }
            />
        </li>
      );
    });

    return matches;
  }

  render(){
    return (
      <ul>
        {this.matchListItems()}
      </ul>
    );
  }
}

export default Matches;
