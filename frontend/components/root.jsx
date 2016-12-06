import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import InitialRegistration from './signup/initial_reg';
import IndexPage from './index.jsx';

const Root = ({store}) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <Route IndexRoute component={ IndexPage } />
        <Route path="/signup" component={ InitialRegistration } />
      </Route>
    </Router>
  </Provider>
);
// <Route path="/login" component={ LogInForm } />;

export default Root;
