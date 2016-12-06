## Component Hierarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
 - Home

**UserContainer**
- Own Profile

**MessagesContainer**
- List of Messages

**ThreadContainer**
- Single Conversation

**BrowseContainer**
- Browse Users

**MatchContainer**
- View Match

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/" | "HomeContainer" |
| "/user/:userId" | "UserContainer" |
| "/messages | "MessagesContainer" |
| "/messages/:threadId | "ThreadContainer" |
| "/browse | "BrowseContainer" |
| "/match/:matchId | "MatchContainer" |
