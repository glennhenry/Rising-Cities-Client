package net.bigpoint.cityrama.model.common.vo
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RewardItemComponentVo
   {
      
      public static const TYPE_SPECIAL_GOOD:String = "TYPE_SPECIAL_GOOD";
      
      public static const TYPE_SPECIAL_PERMISSION:String = "TYPE_SPECIAL_PERMISSION";
      
      public static const TYPE_NORMAL_PERMISSION:String = "TYPE_NORMAL_PERMISSION";
      
      public static const TYPE_NORMAL_GOOD:String = "TYPE_NORMAL_GOOD";
      
      public static const TYPE_EVENT_GOOD:String = "TYPE_EVENT_GOOD";
      
      public static const TYPE_RESOURCE:String = "TYPE_RESOURCE";
      
      public static const TYPE_IMPROVEMENT:String = "TYPE_IMPROVEMENT";
      
      public static const TYPE_ASSIST:String = "TYPE_ASSIST";
      
      public static const PRICE_ICON_GOOD:String = "PRICE_ICON_GOOD";
      
      public static const PRICE_ICON_PERMISSSON:String = "PRICE_ICON_PERMISSSON";
      
      public static const PRICE_ICON_CONSTRUCTED:String = "PRICE_ICON_CONSTRUCTED";
      
      public static const PRICE_ICON_XP:String = "PRICE_ICON_XP";
      
      public static const PRICE_ICON_VC:String = "PRICE_ICON_VC";
      
      public static const PRICE_ICON_PP:String = "PRICE_ICON_PP";
      
      public static const PRICE_ICON_EP:String = "PRICE_ICON_EP";
      
      public static const PRICE_ICON_RC:String = "PRICE_ICON_RC";
      
      public static const PRICE_ICON_NONE:String = "PRICE_ICON_NONE";
      
      public static const SIZE_BIG:String = "bigskin";
      
      public static const SIZE_SMALL:String = "smallskin";
      
      private var typeValidationList:Array = [TYPE_RESOURCE,TYPE_SPECIAL_GOOD,TYPE_SPECIAL_PERMISSION,TYPE_NORMAL_PERMISSION,TYPE_NORMAL_GOOD,TYPE_EVENT_GOOD,TYPE_IMPROVEMENT,TYPE_ASSIST];
      
      private var iconValidationList:Array = [PRICE_ICON_GOOD,PRICE_ICON_PERMISSSON,PRICE_ICON_CONSTRUCTED,PRICE_ICON_XP,PRICE_ICON_VC,PRICE_ICON_PP,PRICE_ICON_EP,PRICE_ICON_RC,PRICE_ICON_NONE];
      
      private var qualityBadgeValidationList:Array = [ServerImprovementConstants.QUALITY_COMMON,ServerImprovementConstants.QUALITY_RARE,ServerImprovementConstants.QUALITY_EPIC,ServerImprovementConstants.QUALITY_LEGENDARY];
      
      private var _size:String;
      
      private var _type:String;
      
      private var _price:Number;
      
      private var _priceIcon:String;
      
      private var _itemIconLib:String;
      
      private var _itemIcon:String;
      
      private var _quality:String;
      
      private var _useNew:Boolean = false;
      
      private var _showCreationAnimation:Boolean = false;
      
      private var _orderId:uint;
      
      private var _bonusFactor:uint = 1;
      
      private var _tooltip:String;
      
      private var _cid:Number;
      
      private var _buffGfxId:Number = -1;
      
      public function RewardItemComponentVo(param1:Object)
      {
         super();
         this.checkVo(param1);
         this._type = param1.type;
         this._size = param1.size;
         this._useNew = param1.useNew;
         this._priceIcon = param1.priceIcon;
         this._itemIconLib = param1.itemIconLib;
         this._itemIcon = param1.itemIcon;
         this._price = param1.price;
         this._tooltip = param1.tooltip;
         this._bonusFactor = param1.factor;
         this._quality = param1.quality;
         this._cid = param1.cid;
         if(param1.buffGFX)
         {
            this._buffGfxId = param1.buffGFX;
         }
      }
      
      private static function validate(param1:Boolean) : void
      {
         if(!param1)
         {
            throw new IllegalOperationError("RewardItemComponentVo:: object malformed!!");
         }
      }
      
      private function checkVo(param1:Object) : void
      {
         validate(param1 != null);
         validate(param1.type != null);
         validate(this.typeValidationList.indexOf(param1.type) != -1);
         validate(this.iconValidationList.indexOf(param1.priceIcon) != -1);
         validate(param1.size == SIZE_BIG || param1.size == SIZE_SMALL);
         validate(param1.itemIconLib != null);
         validate(param1.price != null);
         validate(param1.itemIcon != null);
         if(param1.type == TYPE_IMPROVEMENT)
         {
            validate(this.qualityBadgeValidationList.indexOf(param1.quality) != -1);
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get price() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this._price);
      }
      
      private function get itemIconLib() : String
      {
         return this._itemIconLib;
      }
      
      private function get itemIcon() : String
      {
         return this._itemIcon;
      }
      
      private function get priceIconLib() : String
      {
         switch(this._priceIcon + this._size)
         {
            case PRICE_ICON_GOOD + SIZE_BIG:
            case PRICE_ICON_GOOD + SIZE_SMALL:
            case PRICE_ICON_PERMISSSON + SIZE_BIG:
            case PRICE_ICON_PERMISSSON + SIZE_SMALL:
            case PRICE_ICON_CONSTRUCTED + SIZE_BIG:
            case PRICE_ICON_CONSTRUCTED + SIZE_SMALL:
            case PRICE_ICON_XP + SIZE_BIG:
            case PRICE_ICON_XP + SIZE_SMALL:
            case PRICE_ICON_VC + SIZE_BIG:
            case PRICE_ICON_VC + SIZE_SMALL:
            case PRICE_ICON_PP + SIZE_BIG:
            case PRICE_ICON_PP + SIZE_SMALL:
            case PRICE_ICON_EP + SIZE_BIG:
            case PRICE_ICON_EP + SIZE_SMALL:
            case PRICE_ICON_RC + SIZE_BIG:
            case PRICE_ICON_RC + SIZE_SMALL:
               return "gui_resources_icons";
            default:
               return "";
         }
      }
      
      public function get sortint() : int
      {
         switch(this._type)
         {
            case TYPE_NORMAL_GOOD:
               return 6;
            case TYPE_NORMAL_PERMISSION:
               if(this.useNew)
               {
                  return 2;
               }
               return 4;
               break;
            case TYPE_SPECIAL_GOOD:
               return 5;
            case TYPE_SPECIAL_PERMISSION:
               if(this.useNew)
               {
                  return 1;
               }
               return 3;
               break;
            case TYPE_EVENT_GOOD:
               return 7;
            case TYPE_RESOURCE:
               switch(this._priceIcon)
               {
                  case PRICE_ICON_XP:
                     return 11;
                  case PRICE_ICON_VC:
                     return 10;
                  case PRICE_ICON_EP:
                  case PRICE_ICON_PP:
                     return 12;
                  case PRICE_ICON_RC:
                     return 9;
               }
               break;
            case TYPE_IMPROVEMENT:
               if(this._quality == ServerImprovementConstants.QUALITY_LEGENDARY)
               {
                  return 4;
               }
               if(this._quality == ServerImprovementConstants.QUALITY_EPIC)
               {
                  return 3;
               }
               if(this._quality == ServerImprovementConstants.QUALITY_RARE)
               {
                  return 2;
               }
               if(this._quality == ServerImprovementConstants.QUALITY_COMMON)
               {
                  return 1;
               }
               break;
            case TYPE_ASSIST:
               return 1;
         }
         return 0;
      }
      
      private function get priceIcon() : String
      {
         switch(this._priceIcon + this._size)
         {
            case PRICE_ICON_GOOD + SIZE_BIG:
               return "product_icon";
            case PRICE_ICON_GOOD + SIZE_SMALL:
               return "product_icon_small";
            case PRICE_ICON_PERMISSSON + SIZE_BIG:
               return "permission_icon";
            case PRICE_ICON_PERMISSSON + SIZE_SMALL:
               return "permission_icon_small";
            case PRICE_ICON_CONSTRUCTED + SIZE_BIG:
               return "permission_icon_constructed";
            case PRICE_ICON_CONSTRUCTED + SIZE_SMALL:
               return "permission_icon_constructed_small";
            case PRICE_ICON_XP + SIZE_BIG:
               return "xp_icon";
            case PRICE_ICON_XP + SIZE_SMALL:
               return "xp_icon_small";
            case PRICE_ICON_VC + SIZE_BIG:
               return "layer_cc_icon";
            case PRICE_ICON_VC + SIZE_SMALL:
               return "layer_cc_icon_small";
            case PRICE_ICON_PP + SIZE_BIG:
               return "pp_icon";
            case PRICE_ICON_PP + SIZE_SMALL:
               return "pp_icon_small";
            case PRICE_ICON_EP + SIZE_BIG:
               return "ep_icon";
            case PRICE_ICON_EP + SIZE_SMALL:
               return "ep_icon_small";
            case PRICE_ICON_RC + SIZE_BIG:
               return "dd_button_icon";
            case PRICE_ICON_RC + SIZE_SMALL:
               return "rc_icon_small";
            default:
               return "";
         }
      }
      
      public function get useNew() : Boolean
      {
         return this._useNew;
      }
      
      public function get size() : String
      {
         return this._size;
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function get showCreationAnimation() : Boolean
      {
         return this._showCreationAnimation;
      }
      
      public function set showCreationAnimation(param1:Boolean) : void
      {
         this._showCreationAnimation = param1;
      }
      
      public function get orderId() : uint
      {
         return this._orderId;
      }
      
      public function set orderId(param1:uint) : void
      {
         this._orderId = param1;
      }
      
      public function get bonusFactor() : uint
      {
         return this._bonusFactor;
      }
      
      public function get qualityBadge() : BriskDynaVo
      {
         switch(this._quality + this.size)
         {
            case ServerImprovementConstants.QUALITY_COMMON + SIZE_SMALL:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_small");
            case ServerImprovementConstants.QUALITY_RARE + SIZE_SMALL:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_small");
            case ServerImprovementConstants.QUALITY_EPIC + SIZE_SMALL:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_small");
            case ServerImprovementConstants.QUALITY_LEGENDARY + SIZE_SMALL:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_small");
            case ServerImprovementConstants.QUALITY_COMMON + SIZE_BIG:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_big");
            case ServerImprovementConstants.QUALITY_RARE + SIZE_BIG:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_big");
            case ServerImprovementConstants.QUALITY_EPIC + SIZE_BIG:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_big");
            case ServerImprovementConstants.QUALITY_LEGENDARY + SIZE_BIG:
               return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_big");
            default:
               return null;
         }
      }
      
      public function get buffGfxVo() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_citywheel","buff_" + this._buffGfxId + "_small");
      }
      
      public function get configId() : Number
      {
         return this._cid;
      }
      
      public function get priceIconVo() : BriskDynaVo
      {
         return new BriskDynaVo(this.priceIconLib,this.priceIcon);
      }
      
      public function get itemIconVo() : BriskDynaVo
      {
         return new BriskDynaVo(this.itemIconLib,this.itemIcon);
      }
      
      public function get showBuff() : Boolean
      {
         if(this._buffGfxId != -1 && this._size == SIZE_SMALL)
         {
            return true;
         }
         return false;
      }
   }
}

