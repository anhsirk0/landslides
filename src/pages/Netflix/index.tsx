import { usePageTitle } from "@/hooks";
import { range } from "@/helpers";
import NetflixLogo from "./NetflixLogo";
import NetflixReasons from "./NetflixReasons";
import NetflixFAQ from "./NetflixFAQ";

const Netflix = () => {
  usePageTitle("Netflix");

  return (
    <div className="w-full h-full">
      <div className="h-[90vh] bg-netflix relative isolate">
        <div className="flex flex-col max-w-7xl mx-auto h-full">
          <div className="flex flex-row items-center gap-4 w-full p-6">
            <NetflixLogo className="w-36 fill-primary" />
            <div className="grow"></div>
            <select className="select select-bordered select-xs xl:select-sm z-10">
              <option>English</option>
              <option>Hindi</option>
            </select>
            <button className="btn btn-xs xl:btn-sm btn-primary">
              Sign In
            </button>
          </div>
          <div className="grow center -mt-16 xxl:-mt-32 flex-col gap-6">
            <p className="text-6xl font-black px-56 text-center">
              Unlimited movies, TV shows and more
            </p>
            <p className="text-2xl font-medium">
              Watch anywhere. Cancel anytime.
            </p>
            <p className="text-lg font-medium">
              Ready to watch? Enter your email to create or restart your
              membership.
            </p>
            <div className="join w-96">
              <input
                className="input input-bordered join-item grow"
                placeholder="Email address"
              />
              <button className="btn btn-primary join-item">Subscribe</button>
            </div>
          </div>
        </div>
        <div className="absolute inset-0 w-full h-full bg-gradient-to-b from-base-100 via-base-100/70 to-base-100 opacity-95 -z-10"></div>
      </div>
      <div className="h-56 relative center -mt-8 overflow-x-hidden">
        <div className="bg-gradient-to-b from-base-100 via-transparent border-t-4 border-primary rounded-t-[200%] absolute top-0 -left-[25%] w-[150%] h-full"></div>
      </div>
      <div className="flex flex-col pb-40 -mt-36 max-w-7xl mx-auto gap-4">
        <p className="text-4xl font-black">Trending Now</p>
        <div className="flex flex-row gap-4">
          <select className="select select-bordered select-xs xl:select-sm xxl:select-md z-10">
            <option>India</option>
            <option>Global</option>
          </select>
          <select className="select select-bordered select-xs xl:select-sm xxl:select-md z-10">
            <option>Movies</option>
            <option>TV-Series</option>
          </select>
        </div>
        <div className="carousel carousel-center rounded-box w-full space-x-6 p-4 bg-neutral">
          {range(10).map((idx) => (
            <div
              key={idx}
              className="carousel-item hover:scale-105 transition-all relative"
            >
              <img
                alt={"movie-" + idx}
                src={`https://picsum.photos/seed/${idx * 20}/250/350`}
                className="rounded-box"
              />
              <p className="absolute text-9xl text-neutral font-black bottom-0 left-0 netflix-rating">
                {idx + 1}
              </p>
            </div>
          ))}
        </div>
        <NetflixReasons />
        <NetflixFAQ />
        <p className="text-5xl font-black text-center my-12 pt-12">Todo</p>
      </div>
    </div>
  );
};

export default Netflix;
