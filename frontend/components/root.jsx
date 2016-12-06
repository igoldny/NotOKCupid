import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRedirect, hashHistory } from 'react-router';
import App from './app';
import InitialRegistration from './signup/initial_reg';
import IndexPage from './index.jsx';
import GreetingContainer from './greeting/greeting_container';

const Root = ({store}) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <IndexRedirect to="/signup" />
        <Route path="/signup" component={IndexPage}/>
        <Route path="/greeting" component={GreetingContainer} />
      </Route>
    </Router>
  </Provider>
);
// <Route path="/login" component={ LogInForm } />;

export default Root;
