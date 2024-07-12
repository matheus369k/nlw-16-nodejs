import fastify from "fastify"
import { createTrip } from "./routes/create-trips.js"
import cors from "@fastify/cors"
import { serializerCompiler, validatorCompiler } from "fastify-type-provider-zod"
import { confirmTrip } from "./routes/confirm-trip.js"
import { confirmParticipant } from "./routes/confirm-participant.js"
import { createActivity } from "./routes/create-activity.js"
import { getActivities } from "./routes/get-activities.js"
import { createLink } from "./routes/create-link.js"
import { getLinks } from "./routes/get-links.js"
import { getParticipants } from "./routes/get-participants.js"
import { createInvites } from "./routes/create-invite.js"
import { updateTrip } from "./routes/update-trip.js"
import { getTripDetails } from "./routes/get-trip-details.js"
import { getParticipant } from "./routes/get-participant.js"
import { errorHandler } from "./error-handler.js"
import { env } from "./env.js"

const app = fastify()

app.register(cors, {
    origin: "*"
})

app.setErrorHandler(errorHandler)

app.setValidatorCompiler(validatorCompiler)
app.setSerializerCompiler(serializerCompiler)

app.register(createTrip)
app.register(confirmTrip)
app.register(confirmParticipant)
app.register(createActivity)
app.register(getActivities)
app.register(createLink)
app.register(getLinks)
app.register(getParticipants)
app.register(createInvites)
app.register(updateTrip)
app.register(getTripDetails)
app.register(getParticipant)

app.listen({ port: env.PORT }).then(() => {
    console.log("Server running!")
})