# AI Agents 同步配置

## 概述
此專案包含AI Agent的設定檔案，並自動同步至GitHub Copilot的預設agent資料夾。

## 檔案說明

### `sync-agents.bat`
自動同步批次檔案，功能包括：
- 自動偵測並複製所有`.agent.md`檔案
- 複製到`C:\Users\Dinoin_Chen\.copilot\agents\`
- 自動創建目標資料夾（如不存在）
- 提供詳細的執行日誌

### Git Hook 配置
- **檔案位置**: `.git\hooks\pre-push`
- **觸發時機**: 每次執行`git push`時自動執行
- **功能**: 自動執行agent同步，確保本地檔案與Copilot agent資料夾保持一致

## 使用方法

### 手動同步
```cmd
.\sync-agents.bat
```

### 自動同步
每次執行`git push`時會自動觸發同步。

## Agent 檔案
- `software-engineer-agent-v1.agent.md` - 軟體工程師代理設定檔

## 目錄結構
```
ai_agents/
├── .git/
│   └── hooks/
│       └── pre-push          # Git hook設定
├── software-engineer-agent-v1.agent.md
├── sync-agents.bat           # 同步批次檔案
└── README.md                 # 此說明檔案
```