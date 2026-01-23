package net.bigpoint.cityrama.model.ingameStore
{
   import mx.collections.ArrayCollection;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class IngameStoreTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "IngameStoreTabProxy";
      
      public static const ARCHITECT_TAB_INDEX:int = 0;
      
      public static const IMPROVEMENT_TAB_INDEX:int = 1;
      
      public static const BOOSTERPACK_TAB_INDEX:int = 2;
      
      private static const ARCHITECT_STYLE:String = "architectBookStore";
      
      private static const IMPROVEMENT_STYLE:String = "hipStore";
      
      private static const BOOSTER_STYLE:String = "boosterPackStore";
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int = -1;
      
      private var _lastViewedIndex:int = 0;
      
      public function IngameStoreTabProxy(param1:Object = null)
      {
         super(NAME,param1);
         this._tabs = new ArrayCollection();
         var _loc2_:TabsVo = new TabsVo();
         _loc2_.styleName = ARCHITECT_STYLE;
         _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),String("rcl.booklayer.architect.title"));
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
         _loc2_ = new TabsVo();
         _loc2_.styleName = IMPROVEMENT_STYLE;
         _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.hipStore"),String("rcl.booklayer.hipStore.tabName.capital"));
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
         _loc2_ = new TabsVo();
         _loc2_.styleName = BOOSTER_STYLE;
         _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.boosterpackStore"),String("rcl.booklayer.boosterpackStore.title.capital"));
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function get currentIndex() : int
      {
         return this._currentIndex;
      }
      
      public function set currentIndex(param1:int) : void
      {
         this._currentIndex = param1;
      }
      
      public function get lastViewedIndex() : int
      {
         return this._lastViewedIndex;
      }
      
      public function set lastViewedIndex(param1:int) : void
      {
         this._lastViewedIndex = param1;
      }
   }
}

