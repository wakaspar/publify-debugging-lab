# Instructions for Lab Setup

#### The Issues

The following issues must be added to github, in the following order (so that the issue number matches):

1. [Inconsistent Sidebar Styles](issues/1.md) -- See `39550c6` (html only)
2. [Post tags are shown as "object"](issues/2.md) -- See `8631d57`
3. [Load spinner does not go away ](issues/3.md) -- See `9dc5095`
4. [Top Month Always Empty (Archive Sidebar)](issues/4.md) -- See `4416574`
5. [Months sorted incorrectly (Archive Sidebar)](issues/5.md) -- See above

#### The Labels
Use Github Labels to review and "accept" pull requests. You will need to add them to your fork.

Here are a few common ones (your mileage may vary):

- GTM - Nice work!
- You're so close!
- Missing issue number
- Breaks existing code
- Explanation needed
- WHY does this fix it?
- Remove leading/trailing whitespace
- Mind your indentation
- Unnecessary file changes
- Squash your commits
- Do Not Close PR -- force push!
- console.log("my eyes are burning")
- not so !important

As Pull Requests roll in, it's helpful to apply a sort/filter to reduce noise (e.g. [like so](https://github.com/sf-wdi-gaia/publify_debugging_lab/pulls?q=is%3Apr+is%3Aopen+-label%3A%22GTM+-+Nice+work%21%22+sort%3Aupdated-desc)):

    is:pr is:open -label:"GTM - Nice work!" sort:updated-desc

> **Do not merge** student submitted pull requests. Merging pulls will both close the issues above and make it impossible to diff/review subsequent pulls.
