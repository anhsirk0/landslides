@react.component
let make = () => {
  <div className="center size-full">
    <section className="flex flex-col md:flex-row items-center w-full p-4 lg:p-16">
      <div className="w-full md:w-1/2 flex items-center justify-center gap-4">
        <div className="w-96 h-72 p-3 bg-base-content rounded-box relative">
          <div className="flex rounded-box size-full overflow-hidden">
            <div className="h-full flex-1 bg-base-300/50" />
            <div className="h-full flex-1 bg-accent" />
            // <div className="h-full flex-1 bg-neutral/40" />
            <div className="h-full flex-1 bg-secondary" />
            <div className="h-full flex-1 bg-primary/60" />
            <div className="h-full flex-1 bg-error/80" />
          </div>
          <div
            className="absolute bottom-8 left-8 bg-base-content text-base-100 text-5xl font-black p-2 px-4">
            {"404"->React.string}
          </div>
        </div>
      </div>
      <div className="w-full md:w-1/2 flex flex-col p-4 text-center md:text-left">
        <h2 className="mb-4 font-extrabold text-5xl md:text-7xl">
          {"Page does not exist"->React.string}
        </h2>
        <h4 className="text-xl md:text-3xl text-base-content/80">
          {"We couldn't find the page you were looking for"->React.string}
        </h4>
        <Route.Link to="/" className="btn btn-primary w-fit mt-4 md:mt-8 self-center md:self-start">
          <Icon.house className="resp-icon" />
          {"Home"->React.string}
        </Route.Link>
      </div>
    </section>
  </div>
}
