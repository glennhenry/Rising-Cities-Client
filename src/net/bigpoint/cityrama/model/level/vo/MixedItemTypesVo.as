package net.bigpoint.cityrama.model.level.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   
   public class MixedItemTypesVo
   {
      
      public static const PLAYFIELDITEM:String = "PLAYFIELDITEM";
      
      public static const GOOD:String = "GOOD";
      
      public static const IMPROVEMENT:String = "IMPROVEMENT";
      
      public static const RESOURCE:String = "RESOURCE";
      
      public static const ASSIST:String = "ASSIST";
      
      private var _configItem:ConfigPlayfieldItemDTO;
      
      private var _configGood:ConfigGoodDTO;
      
      private var _configImprovement:ConfigImprovementDTO;
      
      private var _configResource:ConfigResourceDTO;
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _type:String;
      
      private var _itemType:int = -1;
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _specialHighlighting:Boolean;
      
      private var _amount:Number = 0;
      
      private var _unlocked:Boolean;
      
      private var _advisorGroup:String;
      
      public function MixedItemTypesVo(param1:* = null)
      {
         super();
         if(param1 is ConfigPlayfieldItemDTO)
         {
            this._configItem = param1 as ConfigPlayfieldItemDTO;
            this._gfxId = this._configItem.gfxId;
            this._localeId = this._configItem.localeId as String;
            this._type = PLAYFIELDITEM;
            this._specialHighlighting = this._configItem.specialHighlighting;
         }
         else if(param1 is ConfigGoodDTO)
         {
            this._configGood = param1 as ConfigGoodDTO;
            this._gfxId = this._configGood.gfxId;
            this._localeId = this._configGood.localeId as String;
            this._type = GOOD;
         }
         else if(param1 is ConfigImprovementDTO)
         {
            this._configImprovement = param1 as ConfigImprovementDTO;
            this._gfxId = this._configImprovement.gfxId;
            this._localeId = this._configImprovement.locaId;
            this._type = IMPROVEMENT;
         }
         else if(param1 is ConfigResourceDTO)
         {
            this._configResource = param1 as ConfigResourceDTO;
            this._type = RESOURCE;
         }
         else if(param1 is ConfigAssistDTO)
         {
            this._configAssist = param1;
            this._type = ASSIST;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set gfxId(param1:Number) : void
      {
         this._gfxId = param1;
      }
      
      public function set localeId(param1:String) : void
      {
         this._localeId = param1;
      }
      
      public function get specialHighlighting() : Boolean
      {
         return this._specialHighlighting;
      }
      
      public function set specialHighlighting(param1:Boolean) : void
      {
         this._specialHighlighting = param1;
      }
      
      public function get configItem() : ConfigPlayfieldItemDTO
      {
         return this._configItem;
      }
      
      public function get configGood() : ConfigGoodDTO
      {
         return this._configGood;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         this._amount = param1;
      }
      
      public function get unlocked() : Boolean
      {
         return this._unlocked;
      }
      
      public function set unlocked(param1:Boolean) : void
      {
         this._unlocked = param1;
      }
      
      public function get configImprovement() : ConfigImprovementDTO
      {
         return this._configImprovement;
      }
      
      public function get configResource() : ConfigResourceDTO
      {
         return this._configResource;
      }
      
      public function get configAssist() : ConfigAssistDTO
      {
         return this._configAssist;
      }
   }
}

