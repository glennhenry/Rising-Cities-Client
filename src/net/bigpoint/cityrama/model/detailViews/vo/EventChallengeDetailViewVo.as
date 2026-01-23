package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   
   public class EventChallengeDetailViewVo
   {
      
      private var _listOfSteps:Vector.<EventChallengeStepDetailViewVo>;
      
      private var _timeLeft:Number;
      
      private var _fullRuntime:Number;
      
      private var _challengeGfxId:int;
      
      private var _challengelocaleId:String;
      
      private var _rewards:ArrayCollection;
      
      private var _state:String;
      
      private var _id:Number;
      
      private var _challengeType:String;
      
      private var _nbrOfChallengesOverall:int;
      
      private var _nbrOfThisChallenge:int;
      
      private var _eventLocaleId:String;
      
      private var _drops:Vector.<DropInfoVo>;
      
      public function EventChallengeDetailViewVo(param1:Number, param2:int, param3:String, param4:String, param5:Number, param6:Number, param7:Vector.<EventChallengeStepDetailViewVo>, param8:ArrayCollection, param9:String, param10:String, param11:int, param12:int, param13:Vector.<DropInfoVo>)
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         if(!_loc15_)
         {
            super();
            if(!(_loc15_ && Boolean(param2)))
            {
               this._id = param1;
               if(_loc14_ || Boolean(this))
               {
                  this._listOfSteps = param7;
                  if(_loc14_ || Boolean(this))
                  {
                     addr0055:
                     this._timeLeft = param6;
                     if(!(_loc15_ && Boolean(param2)))
                     {
                        this._fullRuntime = param5;
                        if(_loc14_ || Boolean(param3))
                        {
                           this._challengeGfxId = param2;
                           if(!_loc15_)
                           {
                              addr0096:
                              this._challengelocaleId = param4;
                              if(!_loc15_)
                              {
                                 addr00a2:
                                 this._eventLocaleId = param3;
                                 if(_loc14_ || Boolean(param3))
                                 {
                                    this._rewards = param8;
                                    if(!(_loc15_ && Boolean(param1)))
                                    {
                                       this._state = param9;
                                       if(!_loc15_)
                                       {
                                          this._challengeType = param10;
                                          if(_loc14_ || Boolean(param1))
                                          {
                                             this._nbrOfChallengesOverall = param11;
                                             if(_loc14_ || Boolean(param1))
                                             {
                                                §§goto(addr010d);
                                             }
                                          }
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr010d);
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr010d);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0122);
                     }
                     §§goto(addr00a2);
                  }
                  addr010d:
                  this._nbrOfThisChallenge = param12;
                  if(_loc14_ || Boolean(param1))
                  {
                     addr0122:
                     this._drops = param13;
                  }
                  return;
               }
               §§goto(addr0055);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0096);
      }
      
      public function get listOfSteps() : Vector.<EventChallengeStepDetailViewVo>
      {
         return this._listOfSteps;
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function get fullRuntime() : Number
      {
         return this._fullRuntime;
      }
      
      public function get challengeGfxId() : int
      {
         return this._challengeGfxId;
      }
      
      public function get challengelocaleId() : String
      {
         return this._challengelocaleId;
      }
      
      public function get rewards() : ArrayCollection
      {
         return this._rewards;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get nbrOfChallengesOverall() : int
      {
         return this._nbrOfChallengesOverall;
      }
      
      public function get challengeType() : String
      {
         return this._challengeType;
      }
      
      public function get nbrOfThisChallenge() : int
      {
         return this._nbrOfThisChallenge;
      }
      
      public function get eventLocaleId() : String
      {
         return this._eventLocaleId;
      }
      
      public function get drops() : Vector.<DropInfoVo>
      {
         return this._drops;
      }
   }
}

