import React from 'react';
import QuestionFormContainer from './question_form_container';

class Questions extends React.Component {
  constructor(props) {
    super(props);

    this.state = {

    };

    this.questionStack = this.questionStack.bind(this);
    this.answeredQuestions = this.answeredQuestions.bind(this);
    this.answeredQuestionRender = this.answeredQuestionRender.bind(this);
    this.responseIdArray = this.responseIdArray.bind(this);
  }

  answeredQuestions() {
    return (
      Object.keys(this.props.responses).map((response) => {
        return this.props.responses[response].question;
      })
    );
  }

  questionStack() {
    if (this.props.questions) {
      return (
        Object.keys(this.props.questions).map((question) => {
          return this.props.questions[question];
        })
      );
    } else {
      return {};
    }
  }

  responseIdArray() {
    return (
      Object.keys(this.props.responses).map((response) => {
        return this.props.responses[response].answer_id;
      })
    );
  }

  answeredQuestionRender() {
    const answeredQuestions = this.answeredQuestions().map((question) => {
      const questionAnswers = this.props.questions[question.id].answers;

      const answerDisplay = questionAnswers.map((answer) => {
        debugger
        if (this.responseIdArray().includes(answer.id)) {
          return <p key={answer.id} className="question-answer match-response">{answer.body}</p>;
        } else {
          return <p key={answer.id} className="question-answer crossed">{answer.body}</p>;
        }
      });

      return (
        <div className="answered-question" key={ question.id }>
          <div className="question-content">
            <div className="question-content-title">
              <p className="actual-title">{question.title}</p>
              {answerDisplay}
            </div>
          </div>
        </div>
      );
    });
    return (
      <div className="answered-questions-content">
        {answeredQuestions}
      </div>
    );
  }

  render() {
    return (
      <div className="content-questions">
        <div className="content-container">
          <div className="main-questions">
            <h2 className="questions-header">Match Questions</h2>
            <QuestionFormContainer question={ this.questionStack()[3] } />
            <h2 className="show-questions-header">Show Questions</h2>
            <div className="answered-questions">
              {this.answeredQuestionRender()}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Questions;
