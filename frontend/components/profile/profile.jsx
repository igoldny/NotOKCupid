import React from 'react';
import { Link, withRouter } from 'react-router';
import AboutContainer from './about_container';
import TabsContainer from '../tabs/tabs_container';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.handleLike = this.handleLike.bind(this);
    this.handleMessage = this.handleMessage.bind(this);
    this.profileActions = this.profileActions.bind(this);
    this.likeButton = this.likeButton.bind(this);
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId);
    this.props.fetchConversations();
    this.props.fetchLikes(this.props.currentUser.id);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId);
    }
  }

  handleLike(e) {
    e.preventDefault();

    let liked = false;
    let like_id = {};

    Object.keys(this.props.likes).forEach((like) => {
      if (this.props.likes[like].to_id === this.props.profile.id) {
        liked = true;
        like_id = like;
      }
    });

    if (liked) {
      this.props.destroyLike(like_id);
    } else {
      this.props.createLike({from_id: this.props.currentUser.id, to_id: this.props.profile.id});
    }
  }

  handleMessage(e) {
    e.preventDefault();
    let existingThread = {};

    Object.keys(this.props.conversations).forEach((conversation) => {
      if (
        this.props.conversations[conversation].started_user.id === this.props.profile.id ||
        this.props.conversations[conversation].received_user.id === this.props.profile.id
      ) {
        existingThread = conversation;
      }
    });

    if (Object.keys(existingThread).length > 0) {
      this.props.router.push(`/conversations/${existingThread}`);
    } else {
      const conversation = {
        user_one_id: this.props.currentUser.id,
        user_two_id: this.props.profile.id
      };
      this.props.createConversation(conversation)
        .then((conversation) => {
          this.props.router.push(`/conversations/${conversation.currentConversation.conversationId}`);
        });
    }
  }

  likeButton() {
    let liked = false;
    Object.keys(this.props.likes).forEach((like) => {
      if (this.props.likes[like].to_id === this.props.profile.id) {
        liked = true;
      }
    });

    const star = liked ? "★" : "☆";

    if (liked) {
      return <button className="profile-like-button liked" onClick={ this.handleLike }>{star}</button>;
    } else {
      return <button className="profile-like-button not-liked" onClick={ this.handleLike }>{star}</button>;
    }
  }

  profileActions() {
    if (this.props.currentUser.id === this.props.profile.id) {
      return <div></div>;
    } else {
      return (
        <div className="profile-actions">
          {this.likeButton()}
          <button className="profile-message-button" onClick={ this.handleMessage }>Message</button>
        </div>
      );
    }
  }

  render() {
    if (!this.props.profile || !this.props.currentUser) {
      return <div></div>;
    } else {
      return(
        <main className="profile-main">
          <div className="profile-header">
            <div className="inner-header group">
              <div className="user-info group">
                <div className="user-thumb">
                  <img className="prof-pic" src="http://www.bizreport.com/2011/02/03/android-logo-200x200.jpg"></img>
                </div>
                <div className="user-basics group">
                  <h2 className="user-name">
                    {this.props.profile.username}
                  </h2>
                  <h3 className="user-details">
                    {this.props.profile.age} • {this.props.profile.location} •
                  </h3>
                </div>
              </div>
              {this.profileActions()}
            </div>
          </div>
          <TabsContainer
            tabs={ [ <AboutContainer />, <ul></ul>, <ul></ul> ] }
            tabNames={ ["About", "Photos", "Questions"] }
            styling="profile-tabs"
            />
        </main>
      );
    }
  }
}



export default withRouter(Profile);
