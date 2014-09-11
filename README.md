HRKeyValueObserver
==================

## Description

<br />
A lightness KVO helper.

## Usage

<br />
Single keypath observer

	- (instancetype)initWithObject:(id)object keyPath:(NSString *)keyPath target:(id)target selector:(SEL)selector;


<br />
Keypaths perform one selector

	- (instancetype)initWithObject:(id)object keyPathList:(NSArray *)keyPaths target:(id)target selector:(SEL)selector;
	
<br />
Keypaths perform different selectors

	- (instancetype)initWithObject:(id)object keyPathSelectorMap:(NSDictionary *)map target:(id)target;