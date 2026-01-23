package net.bigpoint.cityrama.model.featuredEvent
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeaturedLayerTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeaturedLayerTabProxy";
      
      public static const CITYWHEEL_TAB_INDEX:int = 0;
      
      public static const MYSTERY_TAB_INDEX:int = 1;
      
      private static const CITYWHEEL_STYLE:String = "cityWheel";
      
      private static const MYSTERY_STYLE:String = "mysteryBuilding";
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      private var _fEP:FeaturedEventProxy;
      
      public function FeaturedLayerTabProxy(param1:Object = null)
      {
         super(NAME,param1);
         this._tabs = new ArrayCollection();
         var _loc2_:TabsVo = new TabsVo();
         _loc2_.styleName = CITYWHEEL_STYLE;
         _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.tabName.capital");
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
         _loc2_ = new TabsVo();
         _loc2_.styleName = MYSTERY_STYLE;
         _loc2_.tabLabel = LocaUtils.getString("rcl.misc.featuredEvents","rcl.misc.featuredEvents.header.mystery.capital");
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
      }
      
      public function get tabs() : ArrayCollection
      {
         this.checkEnable();
         return this._tabs;
      }
      
      private function checkEnable() : void
      {
         var _loc2_:TabsVo = null;
         for each(_loc2_ in this._tabs)
         {
            if(_loc2_.styleName == MYSTERY_STYLE)
            {
               _loc2_.isLocked = !this.featuredEventProxy.mysteryBuildingRunning;
               _loc2_.tooltip = this.featuredEventProxy.mysteryBuildingRunning ? LocaUtils.getString("rcl.tooltips.featuredeventpopuptabs","rcl.tooltips.featuredeventpopuptabs" + ".mystery") : LocaUtils.getString("rcl.tooltips.featuredeventpopuptabs","rcl.tooltips.featuredeventpopuptabs" + ".mystery.locked");
            }
            else if(_loc2_.styleName == CITYWHEEL_STYLE)
            {
               _loc2_.isLocked = !this.featuredEventProxy.cityWheelRunning;
               _loc2_.tooltip = this.featuredEventProxy.cityWheelRunning ? LocaUtils.getString("rcl.tooltips.featuredeventpopuptabs","rcl.tooltips.featuredeventpopuptabs" + ".wheel") : LocaUtils.getString("rcl.tooltips.featuredeventpopuptabs","rcl.tooltips.featuredeventpopuptabs" + ".wheel.locked");
            }
         }
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         this._tabs = param1;
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         this._selectedIndex = param1;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         if(!this._fEP)
         {
            this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         }
         return this._fEP;
      }
   }
}

