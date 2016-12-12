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
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId);
    this.props.fetchConversations();
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId);
    }
  }

  handleLike(e) {
    e.preventDefault();
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

  profileActions() {
    if (this.props.currentUser.id === this.props.profile.id) {
      return <div></div>;
    } else {
      return (
        <div className="profile-actions">
          <button className="profile-like-button" onClick={ this.handleLike }>Like</button>
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
