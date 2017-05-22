import React from 'react';
import InitialRegistrationContainer from './initial_reg_container';
import { withRouter } from 'react-router';


class RegPage extends React.Component {
  constructor(props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
  }

  handleClick(e) {
    e.preventDefault();

    this.props.setModal(true);
  }

  handleGuest(e) {
    e.preventDefault();

    this.props.login({ username: "wesrobinson", password: "robinson" })
      .then((user) => {
        this.props.router.push('/');
      });
  }

  render() {
    return (
      <div>
        <div className="background group">
          <div className="reg-header group">
            <div className="logo-image"></div>
            <div className="login-header">
              <button className="login-button" onClick={ this.handleClick } >
                Sign In
              </button>
            </div>
          </div>
          <div className="reg-bottom">
            <div className="catchphrase">
              Sometimes the worst love matches turn out to be the best.
              <div className="smaller-caption">
                {"Find the Yin to your Yang. Or the worst person you've ever met. Ever"}
              </div>
            </div>
            <InitialRegistrationContainer />
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(RegPage);
