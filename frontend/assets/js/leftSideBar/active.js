import {$,$$,sidebarLink} from '../variables.js';
const currentLinkPage = window.location.href;
console.log(currentLinkPage);
[...sidebarLink].forEach(item => {
    if(currentLinkPage == item.href) {
        item.parentElement.classList.add('active');
    }
})
