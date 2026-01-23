package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class MasteryBonusTraitGroupVo
   {
      
      private static const HARVEST:String = "HARVEST";
      
      private static const BALANCE:String = "BALANCE";
      
      private static const TIMER:String = "TIMER";
      
      private var _bonusCollection:Vector.<MasteryBonusVo>;
      
      private var _tag:String;
      
      public function MasteryBonusTraitGroupVo()
      {
         super();
         this._bonusCollection = new Vector.<MasteryBonusVo>();
      }
      
      public function get bonusCollection() : Vector.<MasteryBonusVo>
      {
         return this._bonusCollection;
      }
      
      public function set bonusCollection(param1:Vector.<MasteryBonusVo>) : void
      {
         this._bonusCollection = param1;
         if(this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY) || this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY))
         {
            this._tag = HARVEST;
         }
         else if(this.collectionContains(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY) && this.collectionContains(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY))
         {
            this._tag = BALANCE;
         }
         else if(this.collectionContains(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY))
         {
            this._tag = TIMER;
         }
      }
      
      public function get value() : Number
      {
         if(this._bonusCollection.length > 0)
         {
            return this._bonusCollection[0].value;
         }
         return 0;
      }
      
      public function get locaId() : String
      {
         switch(this._tag)
         {
            case HARVEST:
               return "rent";
            case BALANCE:
               return "balance";
            case TIMER:
               return "cycle";
            default:
               return "";
         }
      }
      
      public function get gfxId() : String
      {
         switch(this._tag)
         {
            case HARVEST:
               return "trait_resources";
            case BALANCE:
               return "trait_energy_mood";
            case TIMER:
               return "trait_time";
            default:
               return "";
         }
      }
      
      private function collectionContains(param1:String) : Boolean
      {
         var _loc2_:MasteryBonusVo = null;
         for each(_loc2_ in this._bonusCollection)
         {
            if(_loc2_.tag == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

