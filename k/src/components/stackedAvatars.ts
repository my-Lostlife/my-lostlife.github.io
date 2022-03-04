/*
 * https://github.com/morethanwords/tweb
 * Copyright (C) 2019-2021 Eduard Kuzmenko
 * https://github.com/morethanwords/tweb/blob/master/LICENSE
 */

import AvatarElement from "./avatar";
import type { LazyLoadQueueIntersector } from "./lazyLoadQueue";

const CLASS_NAME = 'stacked-avatars';
const AVATAR_CLASS_NAME = CLASS_NAME + '-avatar';
const AVATAR_CONTAINER_CLASS_NAME = AVATAR_CLASS_NAME + '-container';

export default class StackedAvatars {
  public container: HTMLElement;
  private lazyLoadQueue: LazyLoadQueueIntersector;
  private avatarSize: number;

  constructor(options: {
    lazyLoadQueue?: LazyLoadQueueIntersector,
    avatarSize: number
  }) {
    this.lazyLoadQueue = options.lazyLoadQueue;
    this.avatarSize = options.avatarSize;

    this.container = document.createElement('div');
    this.container.classList.add(CLASS_NAME);

    this.container.style.setProperty('--avatar-size', options.avatarSize + 'px');
  }

  public render(peerIds: PeerId[], loadPromises?: Promise<any>[]) {
    const children = this.container.children;
    peerIds.slice().reverse().forEach((peerId, idx) => {
      let avatarContainer = children[idx] as HTMLElement;
      if(!avatarContainer) {
        avatarContainer = document.createElement('div');
        avatarContainer.classList.add(AVATAR_CONTAINER_CLASS_NAME);
      }

      let avatarElem = avatarContainer.firstElementChild as AvatarElement;
      if(!avatarElem) {
        avatarElem = new AvatarElement();
        avatarElem.setAttribute('dialog', '0');
        avatarElem.classList.add('avatar-' + this.avatarSize, AVATAR_CLASS_NAME);
        avatarElem.lazyLoadQueue = this.lazyLoadQueue;
        avatarElem.loadPromises = loadPromises;
      }
      
      avatarElem.setAttribute('peer', '' + peerId);
      
      if(!avatarElem.parentNode) {
        avatarContainer.append(avatarElem);
      }

      if(!avatarContainer.parentNode) {
        this.container.append(avatarContainer);
      }
    });

    // if were 3 and became 2
    (Array.from(children) as HTMLElement[]).slice(peerIds.length).forEach(el => el.remove());
  }
}
