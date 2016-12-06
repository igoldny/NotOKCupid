import React from 'react';
import InitialRegistrationContainer from './signup/initial_reg_container';

class IndexPage extends React.Component {
  constructor() {
    super();

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();


  }


  render() {
    return (
      <div>
        <div className="background group">
          <div className="reg-header group">
            <div className="login-header">
              { "Already a member?" }
              <button className="login-button" onClick={ this.handleClick } >
                Sign In
              </button>
              <button className="demo-button" onClick={ this.handleGuest } >
                Demo Login
              </button>
            </div>
            <h1 className="logo">NotOKCupid</h1>
          </div>
          <div className="reg-bottom">
            <div className="catchphrase">
              Sometimes the worst love matches turn out to be the best.
              <div className="smaller-caption">
                {"Find the Yin to your Yang. Or the worst person you've ever met. Ever"}
              </div>
            </div>
            <InitialRegistrationContainer />
            <div className="final-caption">
              <a href="#">{"Want more privacy? Sign up for an Incognito account. >"}</a>
            </div>
          </div>
        </div>
        <div className="bottom-section group">
          <div className="image-container group">
            <div className="image-box">
              <img src="http://cdn.karatebyjesse.com/wp-content/uploads/2013/07/angry_person.jpg"></img>
              <p>
                Signing up takes two minutes and is totally free.
              </p>
            </div>
            <div className="image-box">
              <img src="https://cdn.techinasia.com/wp-content/uploads/2009/12/hearing.jpg"></img>
              <p>
                {"Our matching algorithm helps you find your complete opposite."}
              </p>
            </div>
            <div className="image-box">
              <img src="http://www.ancientchildren.com/wp-content/uploads/2011/06/Apoplectic-Man-Thomas-Perkins.jpg"></img>
              <p>
                {"Proceed with caution."}
              </p>
            </div>
          </div>
        </div>
        <footer className="footer group">
          <p className="footer-copy-styling">
            {"© NotOKCupid 2016"}
          </p>
          <p className="footer-disclosure-styling">
            {"Full Disclosure: You may hate this person more than anyone, ever."}
          </p>
        </footer>
      </div>
    );
  }
}

export default IndexPage;
