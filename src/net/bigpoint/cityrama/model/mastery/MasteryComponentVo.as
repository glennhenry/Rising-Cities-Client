package net.bigpoint.cityrama.model.mastery
{
   public class MasteryComponentVo
   {
      
      private var _masteryLocked:Boolean;
      
      private var _masteryUnlockLevel:int;
      
      private var _currentMasteryIndex:uint;
      
      private var _amountRC:Number;
      
      private var _instantFinishPrice:int;
      
      private var _challenges:Vector.<MasteryChallengeVo>;
      
      public function MasteryComponentVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function get masteryLocked() : Boolean
      {
         return this._masteryLocked;
      }
      
      public function set masteryLocked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._masteryLocked = param1;
         }
      }
      
      public function get masteryUnlockLevel() : int
      {
         return this._masteryUnlockLevel;
      }
      
      public function set masteryUnlockLevel(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._masteryUnlockLevel = param1;
         }
      }
      
      public function get currentMasteryIndex() : uint
      {
         return this._currentMasteryIndex;
      }
      
      public function set currentMasteryIndex(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._currentMasteryIndex = param1;
         }
      }
      
      public function get amountRC() : Number
      {
         return this._amountRC;
      }
      
      public function set amountRC(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._amountRC = param1;
         }
      }
      
      public function get challenges() : Vector.<MasteryChallengeVo>
      {
         return this._challenges;
      }
      
      public function set challenges(param1:Vector.<MasteryChallengeVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._challenges = param1;
         }
      }
      
      public function get instantFinishPrice() : int
      {
         return this._instantFinishPrice;
      }
      
      public function set instantFinishPrice(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._instantFinishPrice = param1;
         }
      }
      
      public function get readyToCollect() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(this._challenges));
            if(_loc1_ || Boolean(this))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0039:
                     §§pop();
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0051);
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0069);
            }
            §§goto(addr0039);
         }
         addr0051:
         §§push(this.currentMasteryIndex < this._challenges.length);
         if(!(_loc2_ && Boolean(this)))
         {
            addr0069:
            if(§§pop())
            {
               if(_loc1_ || Boolean(this))
               {
                  addr0084:
                  §§push(this._challenges[this.currentMasteryIndex].currentProgress >= this._challenges[this.currentMasteryIndex].targetProgress);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr00af:
                  §§push(false);
               }
               §§goto(addr00b0);
            }
            §§goto(addr00af);
         }
         addr00b0:
         return §§pop();
      }
      
      public function get currentProgress() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(Boolean(this._challenges));
            if(!(_loc1_ && Boolean(this)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        addr0057:
                        if(this.currentMasteryIndex < this._challenges.length)
                        {
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§goto(addr0068);
                           }
                        }
                     }
                     return 0;
                  }
               }
            }
            §§goto(addr0057);
         }
         addr0068:
         return this._challenges[this.currentMasteryIndex].currentProgress;
      }
      
      public function get targetProgress() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(this._challenges));
            if(!_loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr003c);
                  }
               }
               §§goto(addr005f);
            }
            addr003c:
            §§pop();
            if(_loc2_ || _loc1_)
            {
               addr005f:
               if(this.currentMasteryIndex < this._challenges.length)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     return this._challenges[this.currentMasteryIndex].targetProgress;
                  }
               }
            }
            §§goto(addr007f);
         }
         addr007f:
         return 0;
      }
   }
}

