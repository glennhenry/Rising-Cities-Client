package net.bigpoint.cityrama.model.departmentBook
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class DepartmentTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "DepartmentTabProxy";
      
      public static const DEPARTMENT_INDEX:int = 0;
      
      public static const DEACTIVATE_INDEX:int = 1;
      
      public static const STYLE_TAB_DEPARTMENT:String = "departments";
      
      public static const STYLE_TAB_DEACTIVATE:String = "departmentDeactivate";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "DepartmentTabProxy";
         if(!_loc1_)
         {
            DEPARTMENT_INDEX = 0;
            if(_loc2_)
            {
               addr0039:
               DEACTIVATE_INDEX = 1;
               if(_loc2_)
               {
                  addr0046:
                  STYLE_TAB_DEPARTMENT = "departments";
                  if(_loc2_ || _loc1_)
                  {
                     STYLE_TAB_DEACTIVATE = "departmentDeactivate";
                  }
               }
               §§goto(addr0065);
            }
            §§goto(addr0046);
         }
         addr0065:
         return;
      }
      §§goto(addr0039);
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      private var _displayedProfessional:DepartmentProfessionalDetailInfoVo;
      
      public function DepartmentTabProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(NAME,param1);
            if(_loc4_)
            {
               this._tabs = new ArrayCollection();
            }
         }
         var _loc2_:TabsVo = new TabsVo();
         if(!_loc3_)
         {
            _loc2_.styleName = STYLE_TAB_DEPARTMENT;
            if(_loc4_ || _loc3_)
            {
               _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.departmentTab");
               if(_loc4_)
               {
                  addr0069:
                  _loc2_.enabled = true;
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.hasNews = false;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr0098:
                        this._tabs.addItem(_loc2_);
                     }
                     _loc2_ = new TabsVo();
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.styleName = STYLE_TAB_DEACTIVATE;
                        if(!_loc3_)
                        {
                           _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.tab.capital");
                           addr00c5:
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              _loc2_.enabled = true;
                              if(!_loc3_)
                              {
                                 _loc2_.hasNews = false;
                                 if(_loc4_)
                                 {
                                    addr0104:
                                    this._tabs.addItem(_loc2_);
                                 }
                                 §§goto(addr010d);
                              }
                           }
                           §§goto(addr0104);
                        }
                        addr010d:
                        return;
                     }
                     §§goto(addr00c5);
                  }
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr0069);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._tabs = param1;
         }
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._selectedIndex = param1;
         }
      }
      
      public function set displayedProfessionalVo(param1:DepartmentProfessionalDetailInfoVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._displayedProfessional = param1;
            if(_loc2_)
            {
               addr001f:
               facade.sendNotification(ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE,this._displayedProfessional);
            }
            return;
         }
         §§goto(addr001f);
      }
      
      public function updateDisplayedProfessional() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this._displayedProfessional.profId);
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(!_loc3_)
         {
            this.displayedProfessionalVo = _loc2_.getDepartmentProfessionalDetailVoById(_loc1_);
         }
      }
      
      public function get displayedProfessionalVo() : DepartmentProfessionalDetailInfoVo
      {
         return this._displayedProfessional;
      }
   }
}

