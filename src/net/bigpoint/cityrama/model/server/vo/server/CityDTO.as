package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class CityDTO
   {
      
      private var _id:Number;
      
      private var _name:String;
      
      private var _playfields:Vector.<PlayfieldLightVo>;
      
      private var _resources:Dictionary;
      
      private var _phases:Vector.<PhaseDTO>;
      
      private var _cityWheel:CityWheelDTO;
      
      private var _cinema:CinemaDTO;
      
      private var _improvements:Vector.<ImprovementDTO>;
      
      public function CityDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:ResourceDTO = null;
         super();
         this._id = param1.id;
         this._name = param1.n;
         this._playfields = new Vector.<PlayfieldLightVo>();
         for each(_loc2_ in param1.p)
         {
            this._playfields.push(new PlayfieldLightVo(_loc2_));
         }
         this._resources = new Dictionary();
         for each(_loc3_ in param1.r)
         {
            _loc6_ = ConfigFactory.buildResourceDTO(_loc3_);
            this._resources[_loc6_.configId] = _loc6_;
         }
         this._phases = new Vector.<PhaseDTO>();
         for each(_loc4_ in param1.ph)
         {
            this._phases.push(new PhaseDTO(_loc4_,null));
         }
         if(param1.w != null)
         {
            this._cityWheel = new CityWheelDTO(param1.w);
         }
         if(param1.c)
         {
            this._cinema = new CinemaDTO(param1.c);
         }
         this._improvements = new Vector.<ImprovementDTO>();
         for each(_loc5_ in param1.imp)
         {
            this._improvements.push(new ImprovementDTO(_loc5_));
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         this._resources = param1;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get phases() : Vector.<PhaseDTO>
      {
         return this._phases;
      }
      
      public function get playfields() : Vector.<PlayfieldLightVo>
      {
         return this._playfields;
      }
      
      public function get cityWheel() : CityWheelDTO
      {
         return this._cityWheel;
      }
      
      public function set cityWheel(param1:CityWheelDTO) : void
      {
         this._cityWheel = param1;
      }
      
      public function get cinema() : CinemaDTO
      {
         return this._cinema;
      }
      
      public function set cinema(param1:CinemaDTO) : void
      {
         this._cinema = param1;
      }
      
      public function get improvements() : Vector.<ImprovementDTO>
      {
         return this._improvements;
      }
   }
}

