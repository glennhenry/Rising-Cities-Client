package net.bigpoint.cityrama.model.optionsMenu
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsMenuNavigationPointVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class OptionsMenuProxy extends Proxy
   {
      
      public static const NAME:String = "OptionsMenuProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "OptionsMenuProxy";
      }
      
      private var _localStorageProxy:LocalStorageProxy;
      
      public function OptionsMenuProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(OptionsMenuProxy.NAME,new ArrayCollection());
            if(_loc2_)
            {
               this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
               if(!(_loc1_ && _loc2_))
               {
                  addr0047:
                  this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_BASES,this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_BASES),true,false));
                  if(_loc2_)
                  {
                     this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_ZOOM,this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_ZOOM),true,true));
                     if(!(_loc1_ && _loc2_))
                     {
                        addr00ad:
                        this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN,false));
                        if(!_loc1_)
                        {
                           this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_SOUND,!OptionsGlobalVariables.getInstance().soundActive,true,false));
                           §§goto(addr00c8);
                        }
                     }
                  }
                  §§goto(addr0100);
               }
               addr00c8:
               if(!(_loc1_ && _loc2_))
               {
                  addr0100:
                  this.menuItems.addItem(new OptionsMenuNavigationPointVo(OptionsMenuNavigationConstants.TOGGLE_MUSIC,!OptionsGlobalVariables.getInstance().soundActive,true,false));
               }
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr00ad);
      }
      
      public function getOptionNavigationPointByName(param1:String) : OptionsMenuNavigationPointVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:OptionsMenuNavigationPointVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.menuItems;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function buttonChanged(param1:String, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:OptionsMenuNavigationPointVo = this.getOptionNavigationPointByName(param1);
         if(!(_loc4_ && param2))
         {
            if(_loc3_ != null)
            {
               if(!_loc4_)
               {
                  _loc3_.selected = param2;
                  if(!_loc4_)
                  {
                     addr0053:
                     this._localStorageProxy.flushMainOptions(param1,param2);
                  }
               }
               §§goto(addr005e);
            }
            §§goto(addr0053);
         }
         addr005e:
      }
      
      public function get menuItems() : ArrayCollection
      {
         return super.data as ArrayCollection;
      }
   }
}

