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
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      private var _displayedProfessional:DepartmentProfessionalDetailInfoVo;
      
      public function DepartmentTabProxy(param1:Object = null)
      {
         super(NAME,param1);
         this._tabs = new ArrayCollection();
         var _loc2_:TabsVo = new TabsVo();
         _loc2_.styleName = STYLE_TAB_DEPARTMENT;
         _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.departmentTab");
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
         _loc2_ = new TabsVo();
         _loc2_.styleName = STYLE_TAB_DEACTIVATE;
         _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.tab.capital");
         _loc2_.enabled = true;
         _loc2_.hasNews = false;
         this._tabs.addItem(_loc2_);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
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
      
      public function set displayedProfessionalVo(param1:DepartmentProfessionalDetailInfoVo) : void
      {
         this._displayedProfessional = param1;
         facade.sendNotification(ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE,this._displayedProfessional);
      }
      
      public function updateDisplayedProfessional() : void
      {
         var _loc1_:Number = this._displayedProfessional.profId;
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         this.displayedProfessionalVo = _loc2_.getDepartmentProfessionalDetailVoById(_loc1_);
      }
      
      public function get displayedProfessionalVo() : DepartmentProfessionalDetailInfoVo
      {
         return this._displayedProfessional;
      }
   }
}

