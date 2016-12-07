import React from 'react';

class ProfileTabs extends React.Component {
  constructor(props) {
    super(props);
    this.state = { selectedIndex: 0 };
    this.selectedContent = "";
    this.header = this.header.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  render() {

    return (
      <section>
        <ul>
          {this.header()}
        </ul>
        <article>{this.selectedContent}</article>
      </section>
    );
  }

  header() {
    return (this.props.tabs.map((item, idx) => {
      let title;

      if(this.state.selectedIndex === idx) {
        title = <strong>{item.title}</strong>;
        this.selectedContent = item.content;
      } else {
        title = item.title;
      }

      return (
        <li key={idx} onClick={() => this.handleClick(idx)}>
          <h1>
            {title}
          </h1>
        </li>);
    }));
  }

  handleClick(idx) {
    this.setState({ selectedIndex: idx });
  }


}

export default ProfileTabs;
