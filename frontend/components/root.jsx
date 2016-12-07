import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRedirect, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import InitialRegistration from './signup/initial_reg';
import RegPageContainer from './signup/reg_page_container';
import ProfileContainer from './profile/profile_container';

const Root = ({store}) => {

  function _redirectIfLoggedIn(nextState, replace) {
    if (store.getState().session.currentUser) {
      replace("/")
    }
  }

  function _redirectIfNotLoggedIn(nextState, replace) {
    if (!store.getState().session.currentUser) {
      replace("/signup")
    }
  }

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRoute component={ ProfileContainer } onEnter={ _redirectIfNotLoggedIn }/>
          <Route path="/signup" component={ RegPageContainer } onEnter={ _redirectIfLoggedIn } />
        </Route>
      </Router>
    </Provider>
  );
}


export default Root;
