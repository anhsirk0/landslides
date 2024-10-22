import { Fragment, FC } from "react";

const NetflixFAQ = () => {
  const faqs = [
    {
      que: "What is Netflix?",
      ans: [
        "Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more – on thousands of internet-connected devices.",
        "You can watch as much as you want, whenever you want, without a single ad – all for one low monthly price. There's always something new to discover, and new TV shows and movies are added every week!",
      ],
    },
    {
      que: "How much does Netflix cost?",
      ans: [
        "Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from ₹149 to ₹649 a month. No extra costs, no contracts.",
      ],
    },
    {
      que: "Where can I watch?",
      ans: [
        "Watch anywhere, anytime. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app, including smart TVs, smartphones, tablets, streaming media players and game consoles.",
        "You can also download your favourite shows with the iOS or Android app. Use downloads to watch while you're on the go and without an internet connection. Take Netflix with you anywhere.",
      ],
    },
    {
      que: "How do I cancel?",
      ans: [
        "Netflix is flexible. There are no annoying contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.",
      ],
    },
    {
      que: "What can I watch on Netflix?",
      ans: [
        "Netflix has an extensive library of feature films, documentaries, TV shows, anime, award-winning Netflix originals, and more. Watch as much as you want, anytime you want.",
      ],
    },
    {
      que: "Is Netflix good for kids?",
      ans: [
        "The Netflix Kids experience is included in your membership to give parents control while kids enjoy family-friendly TV shows and films in their own space.",
        "Kids profiles come with PIN-protected parental controls that let you restrict the maturity rating of content kids can watch and block specific titles you don’t want kids to see.",
      ],
    },
  ];
  return (
    <Fragment>
      <p className="text-4xl font-medium mt-8 xxl:mt-12">
        Frequently Asked Questions
      </p>
      <div className="flex flex-col gap-4">{faqs.map(FaqCollapse)}</div>
    </Fragment>
  );
};

type Props = { que: string; ans: Array<string> };
const FaqCollapse: FC<Props> = ({ que, ans }) => (
  <div
    key={que}
    tabIndex={0}
    className="collapse collapse-plus border-base-300 bg-base-200 border"
  >
    <div className="collapse-title text-xl font-medium">{que}</div>
    <div className="collapse-content">
      <div className="flex flex-col gap-4">
        {ans.map((text, idx) => (
          <p key={idx}>{text}</p>
        ))}
      </div>
    </div>
  </div>
);

export default NetflixFAQ;
