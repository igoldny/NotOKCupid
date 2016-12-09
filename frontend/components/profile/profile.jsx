import React from 'react';
import { Link, withRouter } from 'react-router';
import AboutContainer from './about_container';
import ProfileTabsContainer from './profile_tabs_container';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {

    };

    this.handleLogOut = this.handleLogOut.bind(this);
    this.handleLike = this.handleLike.bind(this);
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId);
    }
  }

  handleLike(e) {
    e.preventDefault();
  }


  handleLogOut(e) {
    e.preventDefault();

    this.props.logout().then(() => this.props.router.push("/signup"));
  }

  render() {
    if (!this.props.profile || !this.props.currentUser) {
      return <div></div>;
    } else {
      return(
        <main className="profile-page">
          <nav className="site-nav group">
            <div>
              <h1 className="nav-logo">
                <a href="/">NotOK</a>
              </h1>
              <ul className="nav-left group">
                <li className="nav-left-link">
                  <a href="/">Browse Matches</a>
                </li>
                <li className="nav-left-link">
                  <a href="/">Quickmatch</a>
                </li>
              </ul>
            </div>
            <div>
              <ul className="nav-right group">
                <li className="nav-right-link">
                  <a href="#/likes">Likes</a>
                </li>
                <li className="nav-right-link">
                  <a href="#/messages">Messages</a>
                </li>
                <li className="nav-right-link">
                  <a href={"#/profile/"+this.props.currentUser.id}>Profile</a>
                </li>
                <li className="nav-right-link">
                  <button onClick={this.handleLogOut}>Log Out</button>
                </li>
              </ul>
            </div>
          </nav>
          <div className="profile-main">
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
                <div className="profile-actions">
                  <button className="profile-like-button" onClick={ this.handleLike }>Like</button>
                  <button className="profile-message-button" onClick={ this.handleMessage }>Message</button>
                </div>
              </div>
            </div>
            <ProfileTabsContainer />
          </div>
          <footer className="main-footer">

          </footer>
        </main>
      );
    }
  }
}



export default withRouter(Profile);
