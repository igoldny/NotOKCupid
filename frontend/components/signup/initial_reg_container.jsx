import React from 'react';
import { connect } from 'react-redux';
import { login, signup } from '../../actions/session_actions';
import InitialRegistration from './initial_reg';

const mapStateToProps = (state) => ({
  loggedIn: !!state.session.currentUser,
  errors: state.session.errors,
});

const mapDispatchToProps = (dispatch, ownProps) => {
  // debugger
  // const process = ownProps.location.pathname.includes("login") ? login : signup;
  // const button = process === login ? "Log In" : "Sign Up";
  //
  // return ({
  //   formType: button,
  //   processForm: (user) => dispatch(process(user)),
  // });
  return ({
    
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(InitialRegistration);
