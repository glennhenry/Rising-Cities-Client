package net.bigpoint.cityrama.model.optionsMenu
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsMenuNavigationPointVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class OptionsMenuProxy extends Proxy
   {
      
      public static const NAME:String = "OptionsMenuProxy";
      
      private var _localStorageProxy:LocalStorageProxy;
      
      public function OptionsMenuProxy()
      {
         super(OptionsMenuProxy.NAME,new ArrayCollection());
         this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_BASES,this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_BASES),true,false));
         this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_ZOOM,this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_ZOOM),true,true));
         this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN,false));
         this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_SOUND,!OptionsGlobalVariables.getInstance().soundActive,true,false));
         this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_MUSIC,!OptionsGlobalVariables.getInstance().soundActive,true,false));
      }
      
      public function getOptionNavigationPointByName(param1:String) : OptionsMenuNavigationPointVo
      {
         var _loc2_:OptionsMenuNavigationPointVo = null;
         for each(_loc2_ in this.menuItems)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function buttonChanged(param1:String, param2:Boolean) : void
      {
         var _loc3_:OptionsMenuNavigationPointVo = this.getOptionNavigationPointByName(param1);
         if(_loc3_ != null)
         {
            _loc3_.selected = param2;
         }
         this._localStorageProxy.flushMainOptions(param1,param2);
      }
      
      public function get menuItems() : ArrayCollection
      {
         return super.data as ArrayCollection;
      }
   }
}

