@react.component
let make = () => {
  Hook.useDocTitle("Spotify")

  let sidelinks = Shape.Spotify.sidelinks->Array.map(item => {
    <li key=item.title>
      <a href="#" className={item.title == "Spotify" ? "font-bold" : ""}>
        {React.createElement(item.icon, {className: "resp-icon"})}
        {item.title->React.string}
      </a>
    </li>
  })

  let otherlinks = Shape.Spotify.otherlinks->Array.mapWithIndex((links, idx) => {
    let innerLinks = links->Array.map(link => {
      <p key={link} className="link link-hover text-xs xxl:text-sm text-base-content/70">
        {link->React.string}
      </p>
    })
    <div key={idx->Int.toString} className="flex flex-row gap-5 mb-2 xxl:mb-4">
      {innerLinks->React.array}
    </div>
  })

  let content = Shape.Spotify.categories->Array.map(cat => {
    let cards = Belt.Array.range(1, 5)->Array.map(idx => {
      <div
        key={idx->Int.toString}
        className="flex flex-col rounded-box p-2 xxl:p-4 hover:bg-base-300 transition-all ease-in-out duration-300 gap-2 group">
        <div className="relative [&>img]:bg-neutral">
          <img
            // alt={"artist-" ++ idx->Int.toString}
            width="300"
            height="300"
            className={cat == "artists" ? "rounded-full" : "rounded-box"}
            src={`https://picsum.photos/seed/${(idx * 10)->Int.toString}/300/300`}
          />
          <button
            className="absolute btn resp-btn btn-circle btn-primary opacity-0 bottom-0 right-2 group-hover:opacity-100 group-hover:bottom-2 transition-all">
            <Icon.play className="resp-icon" weight="fill" />
          </button>
        </div>
        <p className="resp-title"> {`Artist ${idx->Int.toString}`->React.string} </p>
        <p className="text-xs xl:text-sm xxl:text-base -mt-2"> {cat->React.string} </p>
      </div>
    })

    <div key={cat} className="flex flex-col px-4">
      <p className="card-title mt-6 mx-4 mb-2"> {`Popular ${cat}`->React.string} </p>
      <div className="flex flex-row gap-4 mx-4"> {cards->React.array} </div>
    </div>
  })

  <div className="center flex-row gap-2 h-full w-full p-2">
    <div className="flex flex-col gap-2 h-full w-[20rem] md:min-w-[24rem] md:w-[30rem]">
      <ul className="menu menu-sm xxl:menu-md rounded-box bg-base-200">
        {sidelinks->React.array}
      </ul>
      <div className="flex flex-col rounded-box bg-base-200 grow p-4">
        <div className="flex flex-row justify-between">
          <div className="flex flex-row gap-2 text-sm xxl:text-base">
            <Icon.playlist className="resp-icon" />
            {"Library"->React.string}
          </div>
          <Icon.plus className="resp-icon" />
        </div>
        <div className="card card-compact bg-base-300 mt-6 xxl:mt-16">
          <div className="card-body">
            <p className="resp-title"> {"Create your first playlist"->React.string} </p>
            <p className="text-xs xl:text-sm xxl:text-base pb-4">
              {"Its easy, we'll help you"->React.string}
            </p>
            <div className="card-actions">
              <button className="btn resp-btn btn-primary">
                {"Create playlist"->React.string}
              </button>
            </div>
          </div>
        </div>
        <div className="card card-compact bg-base-300 mt-6 xxl:mt-8">
          <div className="card-body">
            <p className="resp-title"> {"Let's find some podcasts to follow"->React.string} </p>
            <p className="text-xs xl:text-sm xxl:text-base pb-4">
              {"We'll keep you updated on new episodes"->React.string}
            </p>
            <div className="card-actions">
              <button className="btn resp-btn btn-primary">
                {"Browse podcasts"->React.string}
              </button>
            </div>
          </div>
        </div>
        <div className="grow" />
        {otherlinks->React.array}
        <button className="btn resp-btn btn-outline w-fit my-2 xxl:my-8">
          <Icon.globe className="resp-icon" />
          {"English"->React.string}
        </button>
      </div>
    </div>
    <div
      className="flex flex-col bg-gradient-to-b from-base-200 from-20% to-base-300 rounded-box min-h-0 h-full grow overflow-y-auto relative">
      <div
        className="flex flex-row gap-4 bg-base-300 rounded-box rounded-b-none p-2 px-4 sticky top-0 z-10">
        <button className="btn resp-btn btn-circle">
          <Icon.caretLeft className="resp-icon" />
        </button>
        <button className="btn resp-btn btn-circle">
          <Icon.caretRight className="resp-icon" />
        </button>
        <div className="grow" />
        <button className="btn resp-btn btn-ghost"> {"Sign up"->React.string} </button>
        <button className="btn resp-btn btn-primary"> {"Log In"->React.string} </button>
      </div>
      {content->React.array}
    </div>
  </div>
}
