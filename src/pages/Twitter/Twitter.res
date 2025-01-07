@react.component
let make = () => {
  Hook.useDocTitle("Twitter")

  <div className="w-full h-full flex flex-col lg:flex-row gap-2">
    <div className="lg:center lg:w-1/2 p-4">
      <Icon.twitter className="fill-base-content size-12 lg:size-96" />
    </div>
    <div className="center lg:w-1/2 p-4">
      <div className="flex flex-col gap-8 lg:w-4/5">
        <h1 className="text-4xl md:text-6xl lg:text-7xl font-bold">
          {"Happening now"->React.string}
        </h1>
        <div className="flex flex-col gap-2 self-start">
          <p className="text-xl md:text-2xl lg:text-3xl font-bold my-4">
            {"Join today."->React.string}
          </p>
          <button className="btn btn-neutral">
            <Icon.google className="resp-icon" />
            {"Sign up with Google"->React.string}
          </button>
          <button className="btn btn-neutral">
            <Icon.apple className="resp-icon" />
            {"Sign up with Apple"->React.string}
          </button>
          <div className="divider"> {"or"->React.string} </div>
          <button className="btn btn-primary"> {"Create account"->React.string} </button>
          <p className="text-xs text-base-content/50">
            {"By signing up, you agree to the Terms of Service and Privacy Policy,"->React.string}
            <br />
            {"including Cookie Use."->React.string}
          </p>
          <p className="md:text-lg mt-20"> {"Already have an account?"->React.string} </p>
          <button className="btn btn-primary btn-outline"> {"Sign in"->React.string} </button>
        </div>
      </div>
    </div>
  </div>
}
