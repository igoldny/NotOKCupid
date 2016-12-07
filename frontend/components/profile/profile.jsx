import React from 'react';
import ProfileTabsContainer from './profile_tabs_container';
import { Link, withRouter } from 'react-router';

class Profile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {

    };
  }


  componentDidMount() {
    this.props.fetchCurrentProfile(this.props.params.userId);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.userId !== nextProps.params.userId) {
      this.props.fetchCurrentProfile(nextProps.params.userId);
    }
  }

  render() {
    return(
      <main>
        <nav className="site-nav">
          <div className="nav-left">
            <h1 className="nav-logo">
              <a href="/">NotOKCupid</a>
            </h1>
            <ul className="nav-links">
              <li className="nav-left-link">
                <a href="/">Browse</a>
              </li>
              <li className="nav-left-link">
                <a href="/">Quickmatch</a>
              </li>
            </ul>
          </div>
          <div className="nav-right">
            <ul className="nav-links">
              <li className="nav-right-link">
                <a href="/messages"></a>
              </li>
              <li className="nav-right-link">
                <a href="/profile"></a>
              </li>
            </ul>
          </div>
        </nav>
        <div className="main-profile">
          <div className="profile-header">
            <div className="user-info-thumb">

            </div>
            <div className="user-info-description">
              <h1 className="username">

              </h1>
              <p className="user-age-location">

              </p>
            </div>
          </div>
          <div className="tab-list">
            <ProfileTabsContainer />
          </div>
          <div className="profile-content">

          </div>
        </div>
        <footer className="main-footer">

        </footer>
      </main>
    );
  }
}

export default withRouter(Profile);
