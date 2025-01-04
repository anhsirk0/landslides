@react.component
let make = () => {
  let route = Route.useRoute()

  <React.Fragment>
    {switch route {
    | Netflix => <Netflix />
    | Spotify => <Spotify />
    | Twitter => <Twitter />
    | Youtube => <Youtube />
    | Home => <Home />
    }}
    <OptionsBar />
  </React.Fragment>
}
