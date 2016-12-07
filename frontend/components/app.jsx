import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import LogInModalContainer from './signup/log_in_modal_container';
import { connect } from 'react-redux';

const App = ({children, modal}) => {
  const modalEl = modal ? <LogInModalContainer /> : null;

  return (
    <div>
      {children}
      { modalEl }
    </div>
  );
}

const mapStateToProps = (state) => ({
  modal: state.modal,
});

export default connect(
  mapStateToProps,
)(App)
