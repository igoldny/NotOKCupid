import React from 'react';
import { Link, withRouter } from 'react-router';
import ConversationBox from './conversation_box';
import TabsContainer from '../tabs/tabs_container';

class Conversations extends React.Component {
  constructor(props) {
    super(props);

    this.receivedList = this.receivedList.bind(this);
    this.sentList = this.sentList.bind(this);
  }

  componentDidMount() {
    this.props.fetchConversations();
  }

  receivedList() {
    return(
      Object.keys(this.props.conversations).map((conversation) => {
        if (this.props.conversations[conversation].received_user.id === this.props.currentUser.id) {
          return (
            <ConversationBox
              className="conversation-box"
              key={conversation}
              conversation={this.props.conversations[conversation]}
              currentUser={this.props.currentUser}
              conversationId={conversation}
              />
          );
        }
      })
    );
  }

  sentList() {
    return(
      Object.keys(this.props.conversations).map((conversation) => {
        if (this.props.conversations[conversation].started_user.id === this.props.currentUser.id) {
          return (
            <ConversationBox
              className="conversation-box"
              key={conversation}
              conversation={this.props.conversations[conversation]}
              currentUser={this.props.currentUser}
              conversationId={conversation}
              />
          );
        }
      })
    );
  }

  render() {
    if (!this.props.conversations) {
      return <div></div>;
    } else {
      return(
        <div className="main-messages">
          <div className="message-heading">
            <h1 className="messages-title">Messages</h1>
          </div>
          <TabsContainer
            tabs={ [ this.receivedList(), this.sentList() ] }
            tabNames={ ["Received", "Sent"] }
            styling="messages-tabs"
            />
        </div>
      );
    }
  }
}



export default Conversations;
