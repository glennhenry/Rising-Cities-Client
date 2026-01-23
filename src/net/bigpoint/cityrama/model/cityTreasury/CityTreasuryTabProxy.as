package net.bigpoint.cityrama.model.cityTreasury
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityTreasuryTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityTreasuryTabProxy";
      
      public static const CURRENCY_TAB_INDEX:int = 0;
      
      public static const GOODS_TAB_INDEX:int = 1;
      
      public static const PACKS_TAB_INDEX:int = 2;
      
      public static const SPECIALS_TAB_INDEX:int = 3;
      
      private static const CURRENCY_STYLE:String = "currency";
      
      private static const GOODS_STYLE:String = "goods";
      
      private static const PACKS_STYLE:String = "packs";
      
      private static const SPECIALS_STYLE:String = "special";
      
      private var _tabs:ArrayCollection;
      
      private var _currentTabIndex:int = -1;
      
      public function CityTreasuryTabProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      private function createTabs() : void
      {
         var _loc1_:CityTreasuryProxy = null;
         var _loc2_:String = null;
         this._tabs = new ArrayCollection();
         if(facade.hasProxy(CityTreasuryProxy.NAME))
         {
            _loc1_ = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         }
         var _loc3_:TabsVo = new TabsVo();
         _loc3_.styleName = CURRENCY_STYLE;
         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.currency.capital");
         _loc3_.enabled = true;
         _loc3_.hasNews = false;
         if(_loc1_)
         {
            _loc2_ = _loc1_.getIcon(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
            if(_loc2_ != null)
            {
               _loc3_.icon = _loc2_ + "_small";
            }
         }
         this._tabs.addItem(_loc3_);
         _loc3_ = new TabsVo();
         _loc3_.styleName = GOODS_STYLE;
         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.goodrebuy.capital");
         _loc3_.enabled = true;
         _loc3_.hasNews = false;
         if(_loc1_)
         {
            _loc2_ = _loc1_.getIcon(CityTreasuryTabProxy.GOODS_TAB_INDEX);
            if(_loc2_ != null)
            {
               _loc3_.icon = _loc2_ + "_small";
            }
         }
         this._tabs.addItem(_loc3_);
         _loc3_ = new TabsVo();
         _loc3_.styleName = PACKS_STYLE;
         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.packages.capital");
         _loc3_.enabled = true;
         _loc3_.hasNews = false;
         if(_loc1_)
         {
            _loc2_ = _loc1_.getIcon(CityTreasuryTabProxy.PACKS_TAB_INDEX);
            if(_loc2_ != null)
            {
               _loc3_.icon = _loc2_ + "_small";
            }
         }
         this._tabs.addItem(_loc3_);
         _loc3_ = new TabsVo();
         _loc3_.styleName = SPECIALS_STYLE;
         _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.treasurynew","rcl.booklayer.treasurynew.tabs.special.capital");
         _loc3_.enabled = true;
         _loc3_.hasNews = false;
         if(_loc1_)
         {
            _loc2_ = _loc1_.getIcon(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
            if(_loc2_ != null)
            {
               _loc3_.icon = _loc2_ + "_small";
            }
         }
         this._tabs.addItem(_loc3_);
      }
      
      public function cleanTabs() : void
      {
         this._tabs = null;
      }
      
      public function get tabs() : ArrayCollection
      {
         if(this._tabs == null)
         {
            this.createTabs();
         }
         return this._tabs;
      }
      
      public function get currentTabIndex() : int
      {
         return this._currentTabIndex;
      }
      
      public function set currentTabIndex(param1:int) : void
      {
         this._currentTabIndex = param1;
      }
   }
}

