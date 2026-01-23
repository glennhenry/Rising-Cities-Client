package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   
   public class QuestDetailViewVo
   {
      
      private var _tasks:Array;
      
      private var _rewards:ArrayCollection;
      
      private var _isQuestComplete:Boolean;
      
      private var _avatarName:String;
      
      private var _bubbleText:String;
      
      private var _questGfxId:int;
      
      private var _targetGoodGfxId:int;
      
      private var _questHeader:String;
      
      private var _polaroid:String;
      
      private var _questID:Number;
      
      private var _isNewQuest:Boolean = true;
      
      private var _changed:Boolean;
      
      private var _questGiverGfxId:int;
      
      private var _drops:Vector.<DropInfoVo>;
      
      private var _lastUpdated:Number;
      
      public function QuestDetailViewVo()
      {
         super();
      }
      
      public function checkChanged(param1:QuestDetailViewVo) : Boolean
      {
         var _loc2_:QuestTaskVo = null;
         var _loc3_:QuestTaskVo = null;
         if(param1.questID != this.questID)
         {
            return false;
         }
         if(param1.isQuestComplete != this.isQuestComplete)
         {
            return true;
         }
         if(this.changed)
         {
            return true;
         }
         for each(_loc2_ in param1.tasks)
         {
            for each(_loc3_ in this.tasks)
            {
               if(_loc2_.finishedTaskText == _loc3_.finishedTaskText)
               {
                  if(_loc3_.checkChanged(_loc2_))
                  {
                     return true;
                  }
                  break;
               }
            }
         }
         return false;
      }
      
      public function get tasks() : Array
      {
         return this._tasks;
      }
      
      public function set tasks(param1:Array) : void
      {
         this._tasks = param1;
      }
      
      public function get questHeader() : String
      {
         return this._questHeader;
      }
      
      public function set questHeader(param1:String) : void
      {
         this._questHeader = param1;
      }
      
      public function get questGfxId() : int
      {
         return this._questGfxId;
      }
      
      public function set questGfxId(param1:int) : void
      {
         this._questGfxId = param1;
      }
      
      public function get bubbleText() : String
      {
         return this._bubbleText;
      }
      
      public function set bubbleText(param1:String) : void
      {
         this._bubbleText = param1;
      }
      
      public function get avatarName() : String
      {
         return this._avatarName;
      }
      
      public function set avatarName(param1:String) : void
      {
         this._avatarName = param1;
      }
      
      public function get isQuestComplete() : Boolean
      {
         return this._isQuestComplete;
      }
      
      public function set isQuestComplete(param1:Boolean) : void
      {
         this._isQuestComplete = param1;
      }
      
      public function get polaroid() : String
      {
         return this._polaroid;
      }
      
      public function set polaroid(param1:String) : void
      {
         this._polaroid = param1;
      }
      
      public function get questID() : Number
      {
         return this._questID;
      }
      
      public function set questID(param1:Number) : void
      {
         this._questID = param1;
      }
      
      public function get isNewQuest() : Boolean
      {
         return this._isNewQuest;
      }
      
      public function set isNewQuest(param1:Boolean) : void
      {
         this._isNewQuest = param1;
      }
      
      public function get changed() : Boolean
      {
         return this._changed;
      }
      
      public function set changed(param1:Boolean) : void
      {
         this._changed = param1;
      }
      
      public function get targetGoodGfxId() : int
      {
         return this._targetGoodGfxId;
      }
      
      public function get rewards() : ArrayCollection
      {
         return this._rewards;
      }
      
      public function get drops() : Vector.<DropInfoVo>
      {
         return this._drops;
      }
      
      public function get questGiverGfxId() : int
      {
         if(this._questGiverGfxId == 0)
         {
            this._questGiverGfxId = 52000;
         }
         return this._questGiverGfxId;
      }
      
      public function get lastUpdated() : Number
      {
         return this._lastUpdated;
      }
      
      public function set rewards(param1:ArrayCollection) : void
      {
         this._rewards = param1;
      }
      
      public function set targetGoodGfxId(param1:int) : void
      {
         this._targetGoodGfxId = param1;
      }
      
      public function set questGiverGfxId(param1:int) : void
      {
         this._questGiverGfxId = param1;
      }
      
      public function set drops(param1:Vector.<DropInfoVo>) : void
      {
         this._drops = param1;
      }
      
      public function set lastUpdated(param1:Number) : void
      {
         this._lastUpdated = param1;
      }
   }
}

