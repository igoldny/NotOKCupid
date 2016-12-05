import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import InitialRegistration from './signup/initial_reg';

const Root = ({store}) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <Route IndexRoute component={ InitialRegistration } />
        <Route path="/signup" component={ InitialRegistration } />
      </Route>
    </Router>
  </Provider>
);

export default Root;
