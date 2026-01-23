package net.bigpoint.cityrama.model.residentialBook
{
   import mx.collections.ArrayCollection;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ResidentialTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ResidentialTabProxy";
      
      public static const OVERVIEW_TAB_INDEX:int = 0;
      
      public static const HIP_TAB_INDEX:int = 1;
      
      private static const OVERVIEW_STYLE:String = "residentialOverview";
      
      private static const HIP_STYLE:String = "residentialHIP";
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int;
      
      private var _currentResidential:ResidentialFieldObjectVo;
      
      public function ResidentialTabProxy(param1:Object = null)
      {
         super(NAME,param1);
         this._tabs = new ArrayCollection();
         var _loc2_:TabsVo = new TabsVo();
         _loc2_.styleName = OVERVIEW_STYLE;
         _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.overview.title.capital"));
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
         _loc2_ = new TabsVo();
         _loc2_.styleName = HIP_STYLE;
         _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.hip.title.capital"));
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
      
      public function get currentResidential() : ResidentialFieldObjectVo
      {
         return this._currentResidential;
      }
      
      public function set currentResidential(param1:ResidentialFieldObjectVo) : void
      {
         this._currentResidential = param1;
      }
   }
}

