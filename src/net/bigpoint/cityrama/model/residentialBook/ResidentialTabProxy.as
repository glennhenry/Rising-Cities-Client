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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ResidentialTabProxy";
         if(!_loc1_)
         {
            OVERVIEW_TAB_INDEX = 0;
            if(!_loc1_)
            {
               HIP_TAB_INDEX = 1;
               if(!(_loc1_ && ResidentialTabProxy))
               {
                  OVERVIEW_STYLE = "residentialOverview";
                  if(!(_loc1_ && ResidentialTabProxy))
                  {
                     addr006e:
                     HIP_STYLE = "residentialHIP";
                  }
               }
               return;
            }
         }
      }
      §§goto(addr006e);
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int;
      
      private var _currentResidential:ResidentialFieldObjectVo;
      
      public function ResidentialTabProxy(param1:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(NAME,param1);
            if(!(_loc4_ && _loc2_))
            {
               addr0033:
               this._tabs = new ArrayCollection();
            }
            var _loc2_:TabsVo = new TabsVo();
            if(_loc3_)
            {
               _loc2_.styleName = OVERVIEW_STYLE;
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.overview.title.capital"));
                  if(_loc3_)
                  {
                     _loc2_.enabled = true;
                     if(!_loc4_)
                     {
                        addr0099:
                        _loc2_.hasNews = false;
                        if(_loc3_)
                        {
                           addr00a3:
                           this._tabs.addItem(_loc2_);
                        }
                     }
                     _loc2_ = new TabsVo();
                     if(_loc3_ || Boolean(param1))
                     {
                        _loc2_.styleName = HIP_STYLE;
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.tabLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.hip.title.capital"));
                           if(_loc3_ || Boolean(this))
                           {
                              _loc2_.enabled = true;
                              addr0104:
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 _loc2_.hasNews = false;
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    addr0135:
                                    this._tabs.addItem(_loc2_);
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr0135);
                           }
                        }
                        addr013e:
                        return;
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0099);
         }
         §§goto(addr0033);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentIndex = param1;
         }
      }
      
      public function get currentResidential() : ResidentialFieldObjectVo
      {
         return this._currentResidential;
      }
      
      public function set currentResidential(param1:ResidentialFieldObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._currentResidential = param1;
         }
      }
   }
}

