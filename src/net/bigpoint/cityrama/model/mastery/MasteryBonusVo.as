package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class MasteryBonusVo
   {
      
      public static const clientTags:Vector.<String> = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
      
      private var _valueXP:Number;
      
      private var _valueCC:Number;
      
      private var _valuePP:Number;
      
      private var _valueEP:Number;
      
      private var _valueEnergy:Number;
      
      private var _valueMood:Number;
      
      private var _valueTimer:Number;
      
      private var _tag:String;
      
      private var _baseResource:String;
      
      private var _needResource:String;
      
      public function MasteryBonusVo(param1:Vector.<ConfigOutputDTO>, param2:String, param3:String)
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:String = null;
         super();
         this._valueXP = 0;
         this._valueCC = 0;
         this._valuePP = 0;
         this._valueEP = 0;
         this._valueEnergy = 0;
         this._valueMood = 0;
         this._valueTimer = 0;
         this._baseResource = param2;
         this._needResource = param3;
         for each(_loc4_ in param1)
         {
            if(_loc4_.type == ServerOutputConstants.TAG)
            {
               _loc5_ = _loc4_.tagConfig.tagName;
               if(MasteryBonusVo.clientTags.indexOf(_loc5_) != -1)
               {
                  this._tag = _loc5_;
               }
               else if(_loc5_ == "TIME")
               {
                  this._valueTimer = _loc4_.outputAmount;
               }
            }
            if(_loc4_.type != ServerOutputConstants.RESOURCE)
            {
               continue;
            }
            switch(_loc4_.resourceConfig.type)
            {
               case ServerResConst.RESOURCE_EXPERIENCE:
                  this._valueXP = _loc4_.outputAmount;
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  this._valueCC = _loc4_.outputAmount;
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  this._valueEP = _loc4_.outputAmount;
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  this._valuePP = _loc4_.outputAmount;
                  break;
               case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
               case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                  this._valueEnergy = _loc4_.outputAmount;
                  break;
               case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
               case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                  this._valueMood = _loc4_.outputAmount;
            }
         }
      }
      
      private static function resourceToIcon(param1:String) : String
      {
         switch(param1)
         {
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               return "layer_cc_icon";
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               return "pp_icon";
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               return "ep_icon";
            default:
               return "";
         }
      }
      
      public function get gfxId() : String
      {
         switch(this._tag)
         {
            case ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY:
               return resourceToIcon(this._baseResource);
            case ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY:
               return resourceToIcon(this._needResource);
            case ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY:
               return "xp_icon";
            case ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY:
               return "layer_energy_icon";
            case ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY:
               return "layer_sad_icon";
            case ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY:
               return "timer_clock";
            default:
               return "";
         }
      }
      
      public function get locaId() : String
      {
         switch(this._tag)
         {
            case ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY:
               return "rent";
            case ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY:
               return "need";
            case ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY:
               return "xp";
            case ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY:
               return "energy";
            case ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY:
               return "mood";
            case ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY:
               return "time";
            default:
               return "";
         }
      }
      
      public function get value() : Number
      {
         switch(this._tag)
         {
            case ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY:
               return this.resourceToValue(this._baseResource);
            case ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY:
               return this.resourceToValue(this._needResource);
            case ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY:
               return this._valueXP;
            case ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY:
               return this._valueEnergy;
            case ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY:
               return this._valueMood;
            case ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY:
               return this._valueTimer;
            default:
               return 0;
         }
      }
      
      private function resourceToValue(param1:String) : Number
      {
         switch(param1)
         {
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               return this._valueCC;
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               return this._valuePP;
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               return this._valueEP;
            default:
               return this._valueCC;
         }
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
   }
}

