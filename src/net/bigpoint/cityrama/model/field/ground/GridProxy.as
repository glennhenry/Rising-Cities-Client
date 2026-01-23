package net.bigpoint.cityrama.model.field.ground
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GridProxy extends Proxy
   {
      
      public static const NAME:String = "GridProxy";
      
      public static const MODE_SINGLE_SELECTION:String = "MODE_SINGLE_SELECTION";
      
      public static const STATUS_DEFINE_STARTPOINT:String = "STATUS_DEFINE_STARTPOINT";
      
      public static const STATUS_DEFINE_ENDPOINT:String = "STATUS_DEFINE_ENDPOINT";
      
      private var _overrideStreets:Boolean;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _playfieldObjetcsProxy:PlayfieldObjectsProxy;
      
      private var _selectedCuboid:Cuboid;
      
      private var _snapping:Boolean;
      
      private var _itemSizeX:int;
      
      private var _itemSizeY:int;
      
      private var _itemSizeZ:int;
      
      private var _itemStartCooX:int;
      
      private var _itemStartCooY:int;
      
      private var _mode:String;
      
      private var _status:String;
      
      private var _devGridVisiblity:Boolean = false;
      
      private var _itemGridVisiblity:Boolean = false;
      
      private var _selectedRectangleIsFree:Boolean = true;
      
      public function GridProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._playfieldObjetcsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._selectedCuboid = new Cuboid();
      }
      
      public function get selectedCuboid() : Cuboid
      {
         return this._selectedCuboid.clone() as Cuboid;
      }
      
      public function setItemSize(param1:int, param2:int, param3:int, param4:int) : void
      {
         this._selectedCuboid.width = this._itemSizeX = param1;
         this._selectedCuboid.height = this._itemSizeY = param2;
         this._selectedCuboid.depth = this._itemSizeZ = param3;
         this._selectedCuboid.z = param4;
         sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE);
         this.checkMatrix();
      }
      
      public function setPositionByMouse(param1:Number, param2:Number) : void
      {
         var _loc3_:int = Math.round(param1 - this._itemSizeX / 2);
         _loc3_ = Math.min(_loc3_,this._playfieldProxy.config.maxX - this._itemSizeX);
         _loc3_ = Math.max(_loc3_,0);
         var _loc4_:int = Math.max(Math.round(param2 - this._itemSizeY / 2),0);
         _loc4_ = Math.min(_loc4_,this._playfieldProxy.config.maxY - this._itemSizeY);
         _loc4_ = Math.max(_loc4_,0);
         if(this._mode == MODE_SINGLE_SELECTION)
         {
            this._selectedCuboid.x = this._itemStartCooX = _loc3_;
            this._selectedCuboid.y = this._itemStartCooY = _loc4_;
         }
         this.checkMatrix();
      }
      
      private function checkMatrix() : void
      {
         var _loc1_:Boolean = false;
         if(!this._playfieldProxy.checkIfRectIsInUsablePlayfieldSize(this._selectedCuboid))
         {
            if(this._selectedRectangleIsFree)
            {
               this._selectedRectangleIsFree = false;
               sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
            }
            return;
         }
         if(!this._selectedRectangleIsFree)
         {
            this._selectedRectangleIsFree = true;
            _loc1_ = true;
         }
         if(this._overrideStreets)
         {
            if(!this._playfieldObjetcsProxy.objectAtIsPlaneObjOrFree(this._selectedCuboid))
            {
               if(this._selectedRectangleIsFree)
               {
                  this._selectedRectangleIsFree = false;
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
               }
               return;
            }
            if(!this._selectedRectangleIsFree)
            {
               this._selectedRectangleIsFree = true;
               _loc1_ = true;
            }
         }
         else
         {
            if(!this._playfieldObjetcsProxy.isFree(this._selectedCuboid))
            {
               if(this._selectedRectangleIsFree)
               {
                  this._selectedRectangleIsFree = false;
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
               }
               return;
            }
            if(!this._selectedRectangleIsFree)
            {
               this._selectedRectangleIsFree = true;
               _loc1_ = true;
            }
         }
         if(_loc1_)
         {
            sendNotification(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
         }
      }
      
      public function get tileGridVisiblity() : Boolean
      {
         return this._devGridVisiblity;
      }
      
      public function set tileGridVisiblity(param1:Boolean) : void
      {
         this._devGridVisiblity = param1;
         sendNotification(ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED);
      }
      
      public function get itemGridVisiblity() : Boolean
      {
         return this._itemGridVisiblity;
      }
      
      public function set itemGridVisiblity(param1:Boolean) : void
      {
         this._itemGridVisiblity = param1;
         sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED);
      }
      
      public function get selectedRectangleIsFree() : Boolean
      {
         return this._selectedRectangleIsFree;
      }
      
      public function get mode() : String
      {
         return this._mode;
      }
      
      public function set mode(param1:String) : void
      {
         this._mode = param1;
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         this._status = param1;
      }
      
      public function get mouseX() : int
      {
         return this._itemStartCooX;
      }
      
      public function get mouseY() : int
      {
         return this._itemStartCooY;
      }
      
      public function get itemSizeX() : int
      {
         return this._itemSizeX;
      }
      
      public function get itemSizeY() : int
      {
         return this._itemSizeY;
      }
      
      public function set snapping(param1:Boolean) : void
      {
         this._snapping = param1;
      }
      
      public function set overrideStreets(param1:Boolean) : void
      {
         this._overrideStreets = param1;
      }
   }
}

