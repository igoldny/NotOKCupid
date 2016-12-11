import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {
    fetchSingleConversation,
    fetchConversations,
    createConversation,
    createMessage
  } from './actions/conversation_actions';

document.addEventListener('DOMContentLoaded', () => {
  let store;

  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  window.store = store;
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={ store } />, root);
});

window.fetchSingleConversation = fetchSingleConversation;
window.fetchConversations = fetchConversations;
window.createConversation = createConversation;
window.createMessage = createMessage;
