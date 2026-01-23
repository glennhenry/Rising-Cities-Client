package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class AbstractQuestSystemConfigDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _downstreamElementOrder:String;
      
      private var _qElementSubType:String;
      
      private var _qElementElementType:String;
      
      private var _downstreamQuestElements:Vector.<AbstractQuestSystemConfigDTO>;
      
      private var _localizationIdentifier:String;
      
      private var _gfxId:int;
      
      private var _lifeTime:Number;
      
      private var _instantFinishStartPrice:Number = 0;
      
      public function AbstractQuestSystemConfigDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            super();
            if(_loc6_)
            {
               this._downstreamElementOrder = String(param1.o);
               if(!_loc5_)
               {
                  this._gfxId = param1.gId;
                  if(_loc6_ || _loc3_)
                  {
                     this._id = param1.id;
                     if(_loc6_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr009a);
            }
         }
         addr0066:
         this._localizationIdentifier = String(param1.l);
         if(!(_loc5_ && Boolean(this)))
         {
            addr0083:
            this._qElementSubType = param1.st;
            if(_loc6_ || Boolean(param1))
            {
               addr009a:
               this._qElementElementType = param1.t;
               if(!_loc5_)
               {
                  this._downstreamQuestElements = new Vector.<AbstractQuestSystemConfigDTO>();
               }
            }
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.ds)
         {
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(_loc2_ == null)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc2_.t != QuestSystemTypeConstants.CHALLENGE)
                  {
                     this._downstreamQuestElements.push(new QuestTaskConfigDTO(_loc2_));
                     continue;
                  }
                  if(!(_loc6_ || Boolean(param1)))
                  {
                     continue;
                  }
               }
            }
            this._downstreamQuestElements.push(new QuestChallengeConfigDTO(_loc2_));
            if(_loc6_)
            {
            }
         }
         if(_loc6_ || Boolean(_loc2_))
         {
            if(param1.et)
            {
               if(_loc6_ || Boolean(this))
               {
                  this._lifeTime = param1.et;
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     §§goto(addr019a);
                  }
               }
               §§goto(addr01a9);
            }
         }
         addr019a:
         if(param1.i)
         {
            if(_loc6_)
            {
               addr01a9:
               this._instantFinishStartPrice = param1.i;
            }
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get downstreamElementOrder() : String
      {
         return this._downstreamElementOrder;
      }
      
      public function get questElementSubType() : String
      {
         return this._qElementSubType;
      }
      
      public function get downstreamQuestElements() : Vector.<AbstractQuestSystemConfigDTO>
      {
         return this._downstreamQuestElements;
      }
      
      public function get localizationIdentifier() : String
      {
         return this._localizationIdentifier;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get lifeTime() : Number
      {
         return this._lifeTime;
      }
      
      public function get instantFinishStartPrice() : Number
      {
         return this._instantFinishStartPrice;
      }
   }
}

