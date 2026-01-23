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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function checkChanged(param1:QuestDetailViewVo) : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestTaskVo = null;
         var _loc3_:QuestTaskVo = null;
         if(_loc8_)
         {
            if(param1.questID != this.questID)
            {
               if(_loc8_)
               {
                  §§push(false);
                  if(_loc8_)
                  {
                     return §§pop();
                  }
                  addr0055:
                  if(§§pop() != this.isQuestComplete)
                  {
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        addr006b:
                        §§push(true);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§goto(addr007a);
                        }
                        else
                        {
                           §§goto(addr00a0);
                        }
                     }
                     else
                     {
                        addr0096:
                        §§push(this.changed);
                        if(!_loc9_)
                        {
                           addr00a0:
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 addr00ab:
                                 return true;
                                 addr00aa:
                              }
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = param1.tasks;
                           while(true)
                           {
                              loop0:
                              for each(_loc2_ in _loc5_)
                              {
                                 for each(_loc3_ in this.tasks)
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(_loc2_.finishedTaskText == _loc3_.finishedTaskText)
                                    {
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§push(_loc3_.checkChanged(_loc2_));
                                          if(_loc8_ || Boolean(_loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(true);
                                                   break loop0;
                                                }
                                             }
                                             break;
                                          }
                                          break loop0;
                                       }
                                       break;
                                    }
                                 }
                              }
                              return false;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr006b);
            }
            else
            {
               §§push(param1.isQuestComplete);
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§goto(addr0055);
               }
            }
            addr007a:
            return §§pop();
         }
         §§goto(addr00aa);
      }
      
      public function get tasks() : Array
      {
         return this._tasks;
      }
      
      public function set tasks(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._tasks = param1;
         }
      }
      
      public function get questHeader() : String
      {
         return this._questHeader;
      }
      
      public function set questHeader(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._questHeader = param1;
         }
      }
      
      public function get questGfxId() : int
      {
         return this._questGfxId;
      }
      
      public function set questGfxId(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._questGfxId = param1;
         }
      }
      
      public function get bubbleText() : String
      {
         return this._bubbleText;
      }
      
      public function set bubbleText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._bubbleText = param1;
         }
      }
      
      public function get avatarName() : String
      {
         return this._avatarName;
      }
      
      public function set avatarName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._avatarName = param1;
         }
      }
      
      public function get isQuestComplete() : Boolean
      {
         return this._isQuestComplete;
      }
      
      public function set isQuestComplete(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._isQuestComplete = param1;
         }
      }
      
      public function get polaroid() : String
      {
         return this._polaroid;
      }
      
      public function set polaroid(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._polaroid = param1;
         }
      }
      
      public function get questID() : Number
      {
         return this._questID;
      }
      
      public function set questID(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._questID = param1;
         }
      }
      
      public function get isNewQuest() : Boolean
      {
         return this._isNewQuest;
      }
      
      public function set isNewQuest(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._isNewQuest = param1;
         }
      }
      
      public function get changed() : Boolean
      {
         return this._changed;
      }
      
      public function set changed(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._changed = param1;
         }
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._questGiverGfxId);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._questGiverGfxId = 52000;
                  }
               }
               addr004a:
               return this._questGiverGfxId;
            }
         }
         §§goto(addr004a);
      }
      
      public function get lastUpdated() : Number
      {
         return this._lastUpdated;
      }
      
      public function set rewards(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._rewards = param1;
         }
      }
      
      public function set targetGoodGfxId(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._targetGoodGfxId = param1;
         }
      }
      
      public function set questGiverGfxId(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._questGiverGfxId = param1;
         }
      }
      
      public function set drops(param1:Vector.<DropInfoVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._drops = param1;
         }
      }
      
      public function set lastUpdated(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._lastUpdated = param1;
         }
      }
   }
}

