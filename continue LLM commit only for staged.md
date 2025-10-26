# continue LLM commit only for staged

#VSCode #ollama #AI #plugin #настройка 

Хорошо работает с **qwen2.5-coder**

В папке расширения есть файл
`VSCode\data\extensions\continue.continue-0.8.52-win32-x64\out\extension.js`

у него функция `async getDiff()` получает
```ts
const staged = await repo.diff(true);
const unstaged = await repo.diff(false);
```

а потом лепит все в кучу
```ts
          diffs.push(`${staged}
${unstaged}`);
```

можно избавить от `unstaged` здесь

---

и еще расширил немного промт строкой в `CommitMessageCommand`
```
You are an expert programmer and use React and TypeScript, you need to make git commit.
```

и еще тут добавил до 10
```
list of no more than 10 short bullet points, each
```
