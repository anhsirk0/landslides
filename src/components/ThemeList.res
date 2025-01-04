@react.component
let make = () => {
  let (currentTheme, setCurrrentTheme) = React.useState(_ => Utils.getTheme())

  React.useEffect0(() => {
    currentTheme->Utils.setTheme
    None
  })

  React.useEffectOnEveryRender(() => {
    setCurrrentTheme(_ => Utils.getTheme())
    None
  })

  let onChange = theme => {
    theme->Utils.setTheme
    setCurrrentTheme(_ => theme)
  }

  let themeCards = Theme.themes->Array.map(theme =>
    <ThemeCard theme onChange key=theme>
      {theme->React.string}
      <div className="flex flex-row gap-1 rounded-btn [&>div]:h-6 [&>div]:w-2">
        <div className="bg-primary" />
        <div className="bg-accent" />
        <div className="bg-secondary" />
        <div className="bg-neutral" />
      </div>
      {currentTheme == theme
        ? <Icon.sparkle className="size-5 absolute top-0.5 left-0.5 animate-grow" />
        : React.null}
    </ThemeCard>
  )

  <ul className="flex flex-col gap-2 min-h-0 h-full overflow-y-auto p-2">
    {React.array(themeCards)}
  </ul>
}
