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
         var _loc2_:Object = null;
         super();
         this._downstreamElementOrder = String(param1.o);
         this._gfxId = param1.gId;
         this._id = param1.id;
         this._localizationIdentifier = String(param1.l);
         this._qElementSubType = param1.st;
         this._qElementElementType = param1.t;
         this._downstreamQuestElements = new Vector.<AbstractQuestSystemConfigDTO>();
         for each(_loc2_ in param1.ds)
         {
            if(_loc2_)
            {
               if(_loc2_ != null)
               {
                  if(_loc2_.t == QuestSystemTypeConstants.CHALLENGE)
                  {
                     this._downstreamQuestElements.push(new QuestChallengeConfigDTO(_loc2_));
                  }
                  else
                  {
                     this._downstreamQuestElements.push(new QuestTaskConfigDTO(_loc2_));
                  }
               }
            }
         }
         if(param1.et)
         {
            this._lifeTime = param1.et;
         }
         if(param1.i)
         {
            this._instantFinishStartPrice = param1.i;
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

