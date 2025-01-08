@react.component
let make = () => {
  Hook.useDocTitle("Spotify")

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
        className="flex flex-col w-[48%] lg:w-auto rounded-box p-2 xxl:p-4 hover:bg-base-300 transition-all ease-in-out duration-300 gap-2 group">
        <div className="relative [&>img]:bg-neutral/50">
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
      <div className="flex flex-row flex-wrap lg:flex-nowrap gap-4 mx-4">
        {cards->React.array}
      </div>
    </div>
  })

  <div className="drawer lg:drawer-open min-h-0 h-full">
    <input id="spotify-drawer" type_="checkbox" className="drawer-toggle" />
    <div className="drawer-content flex flex-col min-h-0 p-2">
      <div
        className="sticky rounded-box lg:rounded-none lg:fixed lg:z-10 lg:inset-0 top-0 h-16 w-full bg-base-100 flex items-center p-2">
        <label htmlFor="spotify-drawer" className="btn btn-square btn-ghost drawer-button">
          <Icon.spotify className="size-8" />
        </label>
        <div className="grow" />
        <div className="flex resp-gap hidden sm:flex w-1/2 xxl:w-1/3">
          <button className="btn btn-square">
            <Icon.house className="resp-icon" weight="fill" />
          </button>
          <label className="input bg-base-200 flex items-center gap-2 grow">
            <Icon.magnifyingGlass className="resp-icon" />
            <input className="grow" placeholder="What do you want to play?" />
          </label>
        </div>
        <div className="grow" />
        <button className="btn btn-ghost"> {"Sign up"->React.string} </button>
        <button className="btn btn-primary"> {"Log In"->React.string} </button>
      </div>
      <div
        className="flex flex-col bg-gradient-to-b from-base-200 from-20% to-base-300 rounded-box min-h-0 h-full grow overflow-y-auto relative mt-2 lg:mt-16">
        {content->React.array}
      </div>
    </div>
    <div className="drawer-side isolate lg:pt-16">
      <label htmlFor="spotify-drawer" ariaLabel="close sidebar" className="drawer-overlay" />
      <div className="h-full lg:p-2">
        <div className="flex flex-col lg:rounded-box bg-base-100 lg:bg-base-200 p-4 h-full">
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
    </div>
  </div>
}
