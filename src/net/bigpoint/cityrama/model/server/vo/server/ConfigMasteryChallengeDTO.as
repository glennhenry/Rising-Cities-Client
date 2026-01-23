package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryChallengeDTO
   {
      
      private var _id:Number;
      
      private var _targetProgress:int;
      
      private var _locaID:String;
      
      private var _nextChallenge:ConfigMasteryChallengeDTO;
      
      private var _bonusID:Number;
      
      private var _instantFinishCosts:int;
      
      public function ConfigMasteryChallengeDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && Boolean(param1)))
            {
               this._id = param1.id;
               if(_loc3_)
               {
                  this._targetProgress = param1.t;
                  if(!_loc2_)
                  {
                     addr0050:
                     this._locaID = param1.l;
                     if(!_loc2_)
                     {
                        if(param1.n)
                        {
                           if(!_loc2_)
                           {
                              addr0077:
                              this._nextChallenge = new ConfigMasteryChallengeDTO(param1.n);
                              if(_loc3_)
                              {
                                 §§goto(addr008d);
                              }
                           }
                           §§goto(addr009b);
                        }
                        addr008d:
                        this._bonusID = param1.b;
                        if(!_loc2_)
                        {
                           addr009b:
                           this._instantFinishCosts = param1.ic;
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0077);
                  }
                  addr00a5:
                  return;
               }
            }
            §§goto(addr0077);
         }
         §§goto(addr0050);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._id = param1;
         }
      }
      
      public function get targetProgress() : int
      {
         return this._targetProgress;
      }
      
      public function get locaID() : String
      {
         return this._locaID;
      }
      
      public function get nextChallenge() : ConfigMasteryChallengeDTO
      {
         return this._nextChallenge;
      }
      
      public function get bonusID() : Number
      {
         return this._bonusID;
      }
      
      public function set bonusID(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._bonusID = param1;
         }
      }
      
      public function get challengeValue() : int
      {
         return this._instantFinishCosts;
      }
   }
}

