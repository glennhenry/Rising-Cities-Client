package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigGroundRestrictionDTO
   {
      
      private var _id:Number;
      
      private var _playfieldId:Number;
      
      private var _configGroundRestrictionShapes:Vector.<ConfigGroundRestrictionShapeDTO>;
      
      private var _whiteList:Boolean;
      
      private var _blackList:Boolean;
      
      private var _configTagIds:Vector.<Number>;
      
      private var _groundType:String;
      
      public function ConfigGroundRestrictionDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:ConfigGroundRestrictionShapeDTO = null;
         super();
         this._id = param1.id;
         this._playfieldId = param1.pid;
         this._whiteList = param1.bw;
         this._blackList = !this._whiteList;
         this._groundType = param1.gt;
         this._configGroundRestrictionShapes = new Vector.<ConfigGroundRestrictionShapeDTO>();
         for each(_loc2_ in param1.shape)
         {
            _loc4_ = new ConfigGroundRestrictionShapeDTO(_loc2_);
            this._configGroundRestrictionShapes.push(_loc4_);
         }
         this._configTagIds = new Vector.<Number>();
         for each(_loc3_ in param1.gid)
         {
            this._configTagIds.push(_loc3_);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get playfieldId() : Number
      {
         return this._playfieldId;
      }
      
      public function get configGroundRestrictionShapes() : Vector.<ConfigGroundRestrictionShapeDTO>
      {
         return this._configGroundRestrictionShapes;
      }
      
      public function get whiteList() : Boolean
      {
         return this._whiteList;
      }
      
      public function get configTagIds() : Vector.<Number>
      {
         return this._configTagIds;
      }
      
      public function get groundType() : String
      {
         return this._groundType;
      }
      
      public function get blackList() : Boolean
      {
         return this._blackList;
      }
   }
}

