package net.bigpoint.cityrama.view.common.components
{
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class RewardItemComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "stickyTape":false,
         "item":true,
         "pricingBg":true,
         "cardBoardGfx":true,
         "pricingIcon":false,
         "labelDisplay":true,
         "buffMultiplier":false,
         "qualityBadge":false,
         "newIcon":false
      };
      
      public var cardBoardGfx:BriskImageDynaLib;
      
      public var stickyTape:BriskMCDynaLib;
      
      public var labelDisplay:LocaLabel;
      
      public var pricingIcon:BriskImageDynaLib;
      
      public var pricingBg:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var item:BriskImageDynaLib;
      
      public var qualityBadge:BriskImageDynaLib;
      
      public var buffMultiplier:BriskImageDynaLib;
      
      public var showBottomPaper:Boolean = true;
      
      private var _data:RewardItemComponentVo;
      
      private var _dataDirty:Boolean;
      
      private var _oldStyle:String;
      
      private var _styleDirty:Boolean;
      
      public function RewardItemComponent()
      {
         super();
      }
      
      public function set data(param1:RewardItemComponentVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataDirty = true;
            this.setCardBoard();
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            if(this.labelDisplay)
            {
               this.labelDisplay.text = this._data.price;
               if((this.labelDisplay.text == "0" || this.labelDisplay.text == "-1") && this._data.useNew)
               {
                  this.labelDisplay.text = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.new.capital");
                  this.pricingIcon.visible = this.pricingIcon.includeInLayout = false;
               }
               else if(this.pricingIcon)
               {
                  this.pricingIcon.visible = this.pricingIcon.includeInLayout = true;
               }
            }
            if(this.newIcon)
            {
               this.newIcon.visible = this._data.useNew;
            }
            if(this.pricingIcon)
            {
               this.pricingIcon.includeInLayout = this.pricingIcon.visible = this._data.priceIconVo != null;
               if(this._data.priceIconVo)
               {
                  this.pricingIcon.briskDynaVo = this._data.priceIconVo;
               }
            }
            if(this.qualityBadge)
            {
               this.qualityBadge.includeInLayout = this.qualityBadge.visible = this._data.qualityBadge != null;
               if(this._data.qualityBadge)
               {
                  this.qualityBadge.briskDynaVo = this._data.qualityBadge;
               }
            }
            if(this.buffMultiplier)
            {
               this.buffMultiplier.includeInLayout = this.buffMultiplier.visible = this._data.showBuff;
               if(this._data.showBuff)
               {
                  this.buffMultiplier.briskDynaVo = this._data.buffGfxVo;
               }
            }
            if(this._styleDirty)
            {
               this.checkStyle();
               this._styleDirty = false;
            }
            if(!this.showBottomPaper)
            {
               if(this.stickyTape)
               {
                  this.stickyTape.includeInLayout = this.stickyTape.visible = false;
               }
               if(this.labelDisplay)
               {
                  this.labelDisplay.includeInLayout = this.labelDisplay.visible = false;
               }
               if(this.pricingBg)
               {
                  this.pricingBg.includeInLayout = this.pricingBg.visible = false;
               }
               if(this.pricingIcon)
               {
                  this.pricingIcon.includeInLayout = this.pricingIcon.visible = false;
               }
            }
         }
      }
      
      private function setCardBoard() : void
      {
         if(this._data)
         {
            this.styleName = this._data.type + "_" + this._data.size;
            this._oldStyle = styleName.toString();
            this._styleDirty = true;
         }
      }
      
      override public function set styleName(param1:Object) : void
      {
         if(param1 != super.styleName)
         {
            super.styleName = param1;
         }
      }
      
      private function checkStyle() : void
      {
         if(this.cardBoardGfx)
         {
            this.cardBoardGfx.dynaBmpSourceName = this.getStyle("bgDynaImageName");
            this.cardBoardGfx.dynaSWFFileName = this.getStyle("bgDynaSwfName") == "null" ? null : this.getStyle("bgDynaSwfName");
            this.cardBoardGfx.dynaLibName = this.getStyle("bgDynaLibName");
         }
         if(this.stickyTape)
         {
            this.stickyTape.visible = this.getStyle("useSticky");
         }
         if(this.item)
         {
            this.item.briskDynaVo = this._data.itemIconVo;
         }
         if(this.labelDisplay)
         {
            this.labelDisplay.styleName = this.getStyle("priceFontStyle").toString();
         }
      }
      
      public function get text() : String
      {
         return this.labelDisplay.text;
      }
      
      public function set text(param1:String) : void
      {
         this.labelDisplay.text = param1;
      }
   }
}

