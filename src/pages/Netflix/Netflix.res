@react.component
let make = () => {
  Hook.useDocTitle("Netflix")

  let trendings = Belt.Array.range(1, 9)->Array.map(idx => {
    <div
      key={idx->Int.toString}
      className="carousel-item hover:scale-105 transition-all relative overflow-y-hidden">
      <img
        // alt={"movie-" ++ idx->Int.toString}
        src={`https://picsum.photos/seed/${(idx * 20)->Int.toString}/250/350`}
        width="250"
        height="350"
        className="rounded-box bg-base-200"
      />
      <p className="absolute text-9xl text-neutral font-black bottom-0 left-0 netflix-rating">
        {idx->Int.toString->React.string}
      </p>
    </div>
  })

  let reasons = Shape.Netflix.Reason.all->Array.map(item => {
    <div
      key=item.title
      className="card card-compact xxl:card-normal bg-gradient-to-br from-primary/30 to-accent/30 flex-1">
      <div className="card-body">
        <p className="card-title"> {item.title->React.string} </p>
        <p className="text-xs xl:text-sm xxl:text-base pb-4"> {item.content->React.string} </p>
        <div className="card-actions justify-end">
          {React.createElement(item.icon, {className: "size-8 xxl:size-12 text-primary"})}
        </div>
      </div>
    </div>
  })

  let faqs = Shape.Netflix.Faq.all->Array.map(item => {
    let answers = item.ans->Array.map(a => <p key={a}> {a->React.string} </p>)
    <div
      key=item.que tabIndex=0 className="collapse collapse-plus border-base-300 bg-base-200 border">
      <div className="collapse-title text-xl font-medium"> {item.que->React.string} </div>
      <div className="collapse-content">
        <div className="flex flex-col gap-4"> {answers->React.array} </div>
      </div>
    </div>
  })

  <div className="w-full h-full">
    <div className="h-[90vh] bg-netflix relative isolate">
      <div className="flex flex-col max-w-7xl mx-auto h-full">
        <div className="flex flex-row items-center gap-4 w-full p-6">
          <Icon.netflix className="w-36 fill-primary" />
          <div className="grow" />
          <select className="select select-bordered select-xs xl:select-sm z-10">
            <option> {"English"->React.string} </option>
            <option> {"Hindi"->React.string} </option>
          </select>
          <button className="btn btn-xs xl:btn-sm btn-primary"> {"Sign In"->React.string} </button>
        </div>
        <div className="grow center -mt-16 xxl:-mt-32 flex-col gap-6">
          <p className="text-6xl font-black px-56 text-center">
            {"Unlimited movies, TV shows and more"->React.string}
          </p>
          <p className="text-2xl font-medium">
            {"Watch anywhere. Cancel anytime."->React.string}
          </p>
          <p className="text-lg font-medium">
            {"Ready to watch? Enter your email to create or restart your
              membership."->React.string}
          </p>
          <div className="join w-96">
            <input className="input input-bordered join-item grow" placeholder="Email address" />
            <button className="btn btn-primary join-item"> {"Subscribe"->React.string} </button>
          </div>
        </div>
      </div>
      <div
        className="absolute inset-0 w-full h-full bg-gradient-to-b from-base-100 via-base-100/70 to-base-100 opacity-95 -z-10"
      />
    </div>
    <div className="h-56 relative center -mt-8 overflow-x-hidden">
      <div
        className="bg-gradient-to-b from-base-100 via-transparent border-t-4 border-primary rounded-t-[200%] absolute top-0 -left-[25%] w-[150%] h-full"
      />
    </div>
    <div className="flex flex-col pb-40 -mt-36 max-w-7xl mx-auto gap-4">
      <p className="text-4xl font-black"> {"Trending Now"->React.string} </p>
      <div className="flex flex-row gap-4">
        <select className="select select-bordered select-xs xl:select-sm xxl:select-md z-10">
          <option> {"India"->React.string} </option>
          <option> {"Global"->React.string} </option>
        </select>
        <select className="select select-bordered select-xs xl:select-sm xxl:select-md z-10">
          <option> {"Movies"->React.string} </option>
          <option> {"TV-Series"->React.string} </option>
        </select>
      </div>
      <div className="carousel carousel-center rounded-box w-full space-x-6 p-4 bg-neutral">
        {trendings->React.array}
      </div>
      <p className="text-4xl font-medium mt-8 xxl:mt-12">
        {"More reasons to join"->React.string}
      </p>
      <div className="flex flex-row gap-4"> {reasons->React.array} </div>
      <p className="text-4xl font-medium mt-8 xxl:mt-12">
        {"Frequently Asked Questions"->React.string}
      </p>
      <div className="flex flex-col gap-4"> {faqs->React.array} </div>
      <div className="flex flex-col gap-2 xxl:gap-4 mt-8 xxl:mt-12">
        <p className="text-lg font-medium text-center">
          {"Ready to watch? Enter your email to create or restart your membership."->React.string}
        </p>
        <div className="join grow lg:px-20 xxl:px-40">
          <input className="input input-bordered join-item grow" placeholder="Email address" />
          <button className="btn btn-primary join-item"> {"Subscribe"->React.string} </button>
        </div>
      </div>
    </div>
    <div className="center bg-neutral">
      <footer className="footer max-w-7xl p-10 text-neutral-content">
        <nav>
          <h6 className="footer-title"> {"Services"->React.string} </h6>
          <a className="link link-hover"> {"Branding"->React.string} </a>
          <a className="link link-hover"> {"Design"->React.string} </a>
          <a className="link link-hover"> {"Marketing"->React.string} </a>
          <a className="link link-hover"> {"Advertisement"->React.string} </a>
        </nav>
        <nav>
          <h6 className="footer-title"> {"Company"->React.string} </h6>
          <a className="link link-hover"> {"About us"->React.string} </a>
          <a className="link link-hover"> {"Contact"->React.string} </a>
          <a className="link link-hover"> {"Jobs"->React.string} </a>
          <a className="link link-hover"> {"Press kit"->React.string} </a>
        </nav>
        <nav>
          <h6 className="footer-title"> {"Legal"->React.string} </h6>
          <a className="link link-hover"> {"Terms of use"->React.string} </a>
          <a className="link link-hover"> {"Privacy policy"->React.string} </a>
          <a className="link link-hover"> {"Cookie policy"->React.string} </a>
        </nav>
      </footer>
    </div>
  </div>
}
