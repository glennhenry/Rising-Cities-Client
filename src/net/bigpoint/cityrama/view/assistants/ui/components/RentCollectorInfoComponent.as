package net.bigpoint.cityrama.view.assistants.ui.components
{
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorHireInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorIdleInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorRunningInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorSuccessSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class RentCollectorInfoComponent extends SkinnableComponent
   {
      
      public static const IDLE_INFO:String = "IDLE_INFO";
      
      public static const HIRE_INFO:String = "HIRE_INFO";
      
      public static const RUNNING_INFO:String = "RUNNING_INFO";
      
      public static const SUCCESS:String = "SUCCESS";
      
      private static var _skinParts:Object = {
         "infoText":false,
         "saleIcon":false,
         "costLabel":false,
         "ppAmount":false,
         "progressTimer":false,
         "vcAmount":false,
         "header":true,
         "epAmount":false,
         "attentionIcon":false
      };
      
      public var header:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      public var costLabel:LocaLabel;
      
      public var vcAmount:LocaLabel;
      
      public var ppAmount:LocaLabel;
      
      public var epAmount:LocaLabel;
      
      public var attentionIcon:BriskImageDynaLib;
      
      public var saleIcon:BriskImageDynaLib;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function RentCollectorInfoComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.header.text = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
            switch(this._data.currentState)
            {
               case IDLE_INFO:
                  if(this.infoText)
                  {
                     this.infoText.text = LocaUtils.getString(String("rcl.misc.rentCollector"),String("rcl.misc.rentCollector.flavour.idle"));
                  }
                  break;
               case HIRE_INFO:
                  if(this.infoText)
                  {
                     this.infoText.text = LocaUtils.getString(String("rcl.misc.rentCollector"),String("rcl.misc.rentCollector.flavour.offers"));
                  }
                  if(this.attentionIcon)
                  {
                     this.attentionIcon.includeInLayout = this.attentionIcon.visible = !this._data.saleActive;
                  }
                  if(this.saleIcon)
                  {
                     this.saleIcon.includeInLayout = this.saleIcon.visible = this._data.saleActive;
                  }
                  break;
               case RUNNING_INFO:
                  if(this.progressTimer)
                  {
                     this.progressTimer.data = this._data.timerVo;
                  }
                  if(this.infoText)
                  {
                     this.infoText.includeInLayout = this.infoText.visible = false;
                  }
                  break;
               case SUCCESS:
                  if(this.vcAmount)
                  {
                     this.vcAmount.visible = this.vcAmount.includeInLayout = false;
                     if(this._data.collectedVC > 0)
                     {
                        this.vcAmount.visible = this.vcAmount.includeInLayout = true;
                        this.vcAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedVC);
                     }
                  }
                  if(this.ppAmount)
                  {
                     this.ppAmount.visible = this.ppAmount.includeInLayout = false;
                     if(this._data.collectedPP > 0)
                     {
                        this.ppAmount.visible = this.ppAmount.includeInLayout = true;
                        this.ppAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedPP);
                     }
                  }
                  if(this.epAmount)
                  {
                     this.epAmount.visible = this.epAmount.includeInLayout = false;
                     if(this._data.collectedEP > 0)
                     {
                        this.epAmount.visible = this.epAmount.includeInLayout = true;
                        this.epAmount.text = LocaUtils.getThousendSeperatedNumber(this._data.collectedEP);
                     }
                  }
            }
         }
      }
      
      public function set data(param1:RentCollectorSideMenuVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            switch(this._data.currentState)
            {
               case IDLE_INFO:
                  setStyle("skinClass",RentCollectorIdleInfoSkin);
                  break;
               case HIRE_INFO:
                  setStyle("skinClass",RentCollectorHireInfoSkin);
                  break;
               case RUNNING_INFO:
                  setStyle("skinClass",RentCollectorRunningInfoSkin);
                  break;
               case SUCCESS:
                  setStyle("skinClass",RentCollectorSuccessSkin);
            }
            invalidateProperties();
         }
      }
   }
}

