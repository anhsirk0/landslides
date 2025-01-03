@react.component
let make = () => {
  let route = Route.useRoute()
  let (isOpen, setIsOpen) = React.useState(_ => false)

  let bottom1 = isOpen ? "bottom-10" : "-bottom-6"
  let bottom2 = isOpen ? "bottom-0" : "-bottom-16"

  React.useEffectOnEveryRender(() => {
    switch route {
    | Home => setIsOpen(_ => true)
    | _ => ()
    }
    None
  })

  <React.Fragment>
    <button
      onClick={_ => setIsOpen(v => !v)}
      className={`fixed rounded-btn bg-accent left-[50vw] h-10 w-10 rotate-45 transition-all ease-in-out duration-300 z-50 center ${bottom1}`}>
      {isOpen
        ? <Icon.arrowDown className="text-accent-content -rotate-45 resp-icon" />
        : React.null}
    </button>
    <div className={`transition-all ease-in-out duration-300 fixed w-screen bg-accent ${bottom2}`}>
      <div className="w-full h-16 flex flex-row">
        <div className="navbar">
          <div className="navbar-start">
            <Route.Link to="/" className="btn btn-sm xxl:btn-md btn-primary option-btn xxl:text-xl">
              <Icon.logo className="fill-primary-content" />
              {"Landslides"->React.string}
            </Route.Link>
          </div>
          <div className="navbar-end space-x-4">
            <SelectTheme />
          </div>
        </div>
      </div>
    </div>
  </React.Fragment>
}
