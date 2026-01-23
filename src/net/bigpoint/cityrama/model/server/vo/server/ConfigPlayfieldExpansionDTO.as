package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigPlayfieldExpansionDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _playfieldId:Number;
      
      private var _px:Number;
      
      private var _py:Number;
      
      private var _sx:Number;
      
      private var _sy:Number;
      
      private var _neighbourIDList:Vector.<Number>;
      
      private var _gfx:int;
      
      private var _localid:int;
      
      private var _itemType:int;
      
      private var _normalPrice:int;
      
      private var _premiumPrice:int;
      
      private var _preload:Boolean;
      
      private var _initialPlayfieldItems:Vector.<ConfigInitialPlayfieldItemDTO>;
      
      private var _listOfEventIds:Vector.<Number>;
      
      public function ConfigPlayfieldExpansionDTO(param1:Object)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         super();
         this._id = param1.id;
         this._playfieldId = param1.pf;
         this._px = param1.px;
         this._py = param1.py;
         this._sx = param1.sx;
         this._sy = param1.sy;
         this._gfx = param1.gf;
         this._itemType = param1.it;
         this._preload = param1.fp;
         this._localid = param1.fl;
         this._normalPrice = param1.np;
         this._premiumPrice = param1.pp;
         this._neighbourIDList = new Vector.<Number>();
         for each(_loc2_ in param1.nx)
         {
            this._neighbourIDList.push(_loc2_);
         }
         this._initialPlayfieldItems = new Vector.<ConfigInitialPlayfieldItemDTO>();
         for each(_loc3_ in param1.icpi)
         {
            this._initialPlayfieldItems.push(new ConfigInitialPlayfieldItemDTO(_loc3_));
         }
         this._listOfEventIds = new Vector.<Number>();
         for each(_loc4_ in param1.e)
         {
            this._listOfEventIds.push(_loc4_);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get px() : Number
      {
         return this._px;
      }
      
      public function set px(param1:Number) : void
      {
         this._px = param1;
      }
      
      public function get py() : Number
      {
         return this._py;
      }
      
      public function set py(param1:Number) : void
      {
         this._py = param1;
      }
      
      public function get sx() : Number
      {
         return this._sx;
      }
      
      public function set sx(param1:Number) : void
      {
         this._sx = param1;
      }
      
      public function get sy() : Number
      {
         return this._sy;
      }
      
      public function set sy(param1:Number) : void
      {
         this._sy = param1;
      }
      
      public function get neighbourIDList() : Vector.<Number>
      {
         return this._neighbourIDList;
      }
      
      public function set neighbourIDList(param1:Vector.<Number>) : void
      {
         this._neighbourIDList = param1;
      }
      
      public function get playfieldId() : Number
      {
         return this._playfieldId;
      }
      
      public function set playfieldId(param1:Number) : void
      {
         this._playfieldId = param1;
      }
      
      public function get gfx() : int
      {
         return this._gfx;
      }
      
      public function set gfx(param1:int) : void
      {
         this._gfx = param1;
      }
      
      public function get localid() : int
      {
         return this._localid;
      }
      
      public function set localid(param1:int) : void
      {
         this._localid = param1;
      }
      
      public function get itemType() : int
      {
         return this._itemType;
      }
      
      public function set itemType(param1:int) : void
      {
         this._itemType = param1;
      }
      
      public function get normalPrice() : int
      {
         return this._normalPrice;
      }
      
      public function get premiumPrice() : int
      {
         return this._premiumPrice;
      }
      
      public function set premiumPrice(param1:int) : void
      {
         this._premiumPrice = param1;
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         this._preload = param1;
      }
      
      public function get initialPlayfieldItems() : Vector.<ConfigInitialPlayfieldItemDTO>
      {
         return this._initialPlayfieldItems;
      }
      
      public function get listOfEventIds() : Vector.<Number>
      {
         return this._listOfEventIds;
      }
   }
}

