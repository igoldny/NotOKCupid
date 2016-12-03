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
| "/home" | "HomeContainer" |
| "/home/user/:userId" | "UserContainer" |
| "/home/messages | "MessagesContainer" |
| "/home/messages/:threadId | "ThreadContainer" |
| "/home/browse | "BrowseContainer" |
| "/home/match/:matchId | "MatchContainer" |
